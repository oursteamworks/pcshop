package com.eb.pcshop.manager.service.impl;

import com.eb.pcshop.commons.jedis.JedisClient;
import com.eb.pcshop.manager.admininterface.ServiceInterface;
import com.eb.pcshop.manager.dao.CategoryExtraMapper;
import com.eb.pcshop.manager.dao.ProductExtraMapper;
import com.eb.pcshop.manager.dao.ProductMapper;
import com.eb.pcshop.manager.pojo.dto.MessageObject;
import com.eb.pcshop.manager.pojo.dto.PageDto;
import com.eb.pcshop.manager.pojo.po.Category;
import com.eb.pcshop.manager.pojo.po.Product;
import com.eb.pcshop.manager.pojo.po.ProductCustom;
import com.eb.pcshop.manager.pojo.po.ProductExample;
import com.eb.pcshop.manager.pojo.vo.ProductIndex;
import com.eb.pcshop.manager.pojo.vo.ProductVO;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/17.
 */
@Service
public class ServiceInterfaceImpl implements ServiceInterface {
    //即将使用logback的日志，成员变量
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ProductExtraMapper productExtraMapper;

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private CategoryExtraMapper categoryExtraMapper;

    @Autowired
    private JedisClient jedisClient;

    @Autowired
    private SolrServer solrServer;

    @Override
    public List<ProductCustom> listProductByPage(PageDto pageDto, ProductVO productVO) {
        List<ProductCustom> list = new ArrayList<ProductCustom>();
        //异常一定要处理
        try {
            list = productExtraMapper.listProductByPage(pageDto,productVO);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Long countProduct(ProductVO productVO) {
        Long i = 0L;
        try {
            i = productExtraMapper.countProduct(productVO);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int removeBatchProduct(List<Integer> list) {
        int i = 0;
        try {
            Product product=new Product();
            product.setPflag("0");
            ProductExample example=new ProductExample();
            ProductExample.Criteria criteria=example.createCriteria();
            criteria.andPidIn(list);
            i = productMapper.updateByExampleSelective(product,example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int updatePutaway(String pid) {
        Product product= productExtraMapper.getProductByPid(pid);
        return productExtraMapper.updatePutaway(product);
    }

    @Override
    public int removeOne(String pid) {
        int i = productExtraMapper.removeOne(pid);
        return i;
    }

    @Override
    public List<Category> listCategory() {
        return categoryExtraMapper.listCategory();
    }

    @Override
    public int addProduct(Product product) {
        return productExtraMapper.insertProduct(product);
    }

    @Override
    public Product getProduct(String pid) {
        return productMapper.selectByPrimaryKey(Integer.parseInt(pid));
    }

    @Override
    public int editProduct(Product product) {
        return productMapper.updateByPrimaryKey(product);
    }

    @Override
    public int addPimage(String pid, String pimage) {
        int i=productExtraMapper.addPimage(pid, pimage);
        return i;
    }

    @Override
    public MessageObject importIndex() {
        MessageObject mo = new MessageObject();
        mo.setMsg("failed");
        try {
            List<ProductIndex> list=productExtraMapper.importIndex();
            for (ProductIndex productIndex : list) {
                SolrInputDocument solrInputFields = new SolrInputDocument();
                solrInputFields.addField("id",productIndex.getPid());
                solrInputFields.addField("pname",productIndex.getPname());
                solrInputFields.addField("shopPrice",productIndex.getShopPrice());
                solrInputFields.addField("pdesc",productIndex.getPdesc());
                solrInputFields.addField("cname",productIndex.getCname());
                solrInputFields.addField("pimage",productIndex.getPimage());
                solrServer.add(solrInputFields);
            }
            solrServer.commit();
            mo.setSuccess(true);
            mo.setMsg("success");
            mo.setData(list);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return mo;
    }
    @Override
    public Product getProductPid() {
        Product product =   productExtraMapper.getProductPid();
        return product;
    }
}
