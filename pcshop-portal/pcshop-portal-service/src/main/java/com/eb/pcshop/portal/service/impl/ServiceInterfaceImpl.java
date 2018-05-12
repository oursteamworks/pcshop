package com.eb.pcshop.portal.service.impl;

import com.eb.pcshop.commons.jedis.JedisClient;
import com.eb.pcshop.commons.util.JsonUtils;
import com.eb.pcshop.commons.util.StrKit;
import com.eb.pcshop.portal.dao.PictureMapper;
import com.eb.pcshop.portal.dao.ProductDao;
import com.eb.pcshop.portal.dao.ProductMapper;
import com.eb.pcshop.portal.pojo.po.Picture;
import com.eb.pcshop.portal.pojo.po.PictureExample;
import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.ProductIndex;
import com.eb.pcshop.portal.pojo.vo.TbSearchItemResult;
import com.eb.pcshop.portal.service.ServiceInterface;
import org.apache.solr.client.solrj.SolrQuery;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/25.
 */
@Service
public class ServiceInterfaceImpl implements ServiceInterface{

    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ProductDao productDao;

    @Autowired
    private PictureMapper pictureMapper;

    @Autowired
    private JedisClient jedisClient;

    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Picture> listPictureByCid(Integer cid) {
        /*jedisClient.hdel("lunbo",cid+"");*/
        //第一步先去redis数据库读取  如果有的话 就直接返回 这样可以节约性能
        try {
            //从redis中获取图片
            String lunbo = jedisClient.hget("lunbo", cid + "");
            //如果不为空 就说明 从redis中得到了值  并且是json格式的数据了
            if(StrKit.notBlank(lunbo)){
                List<Picture> pictureList = JsonUtils.jsonToList(lunbo,Picture.class);
                return  pictureList;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        //去数据库读取数据
        PictureExample example=new PictureExample();
        PictureExample.Criteria criteria=example.createCriteria();
        //把cid传给这个模板
        criteria.andCidEqualTo(cid);
        //通过模板的方法获取到符合条件的图片
        List<Picture> pictureList = pictureMapper.selectByExample(example);

        //否则的话 就把这个查询到的数据写到redis中
        try {
            jedisClient.hset("lunbo",cid+"",JsonUtils.objectToJson(pictureList));
            System.out.println("将数据存取到redis中");
        }catch (Exception e){
            e.printStackTrace();
        }
        return pictureList;
    }

    @Override
    public List<Product> showProducts(String keyword) {
        return productMapper.showProducts(keyword);
    }

    @Override
    public TbSearchItemResult searchIndex(String keyword, int pageIndex, int pageSize) {
        TbSearchItemResult result=new TbSearchItemResult();
        try {
            //创建solr查询对象
            SolrQuery solrQuery=new SolrQuery();
            //设置关键字
            solrQuery.setQuery(keyword);
            //设置分页起始查询位置
            solrQuery.setStart((pageIndex-1)*pageSize);
            //设置每页显示数量
            solrQuery.setRows(pageSize);
            //设置默认搜索域
            solrQuery.set("df","item_keywords");
            //设置高亮部分
            solrQuery.setHighlight(true);
            solrQuery.addHighlightField("pname");
            solrQuery.setHighlightSimplePre("<em style='color:red;'>");
            solrQuery.setHighlightSimplePost("</em>");
            //调用dao方法 进行查询
            result=productDao.searchIndex(solrQuery,pageSize);


        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return result;
    }


    @Override
    public ProductIndex getProductById(int pid) {
        ProductIndex product =  productMapper.getProductById(pid);

        return product;
    }

}
