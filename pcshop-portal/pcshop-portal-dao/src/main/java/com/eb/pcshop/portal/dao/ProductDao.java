package com.eb.pcshop.portal.dao;

import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.ProductIndex;
import com.eb.pcshop.portal.pojo.vo.TbSearchItemResult;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by 孔泽琦 on 2018/5/8.
 */
@Repository
public class ProductDao {
    @Autowired
    private SolrServer solrServer;
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    public TbSearchItemResult searchIndex(SolrQuery solrQuery, int pageSize) {
        //为了得到TbSearchItemResult对象中的三个属性
        //recordCount 总记录数
        //totalPages  总页数
        //list   对象集合
        TbSearchItemResult result=new TbSearchItemResult();
        try {
            //获取查询响应
            QueryResponse queryResponse = solrServer.query(solrQuery);
            //获取查询结果集
            SolrDocumentList solrDocumentList = queryResponse.getResults();
            //获取总记录数
            long recordCount = solrDocumentList.getNumFound();
            result.setRecordCount(recordCount);
            //获取总页数
            long totalPages = (recordCount + pageSize - 1) / pageSize;
            result.setTotalPages((int) totalPages);
            //获取documentList中的高亮列表
           Map<String,Map<String,List<String>>> highlighting = queryResponse.getHighlighting();
            //获取目标列表
            List<ProductIndex> productlist=new ArrayList<>();

            for (SolrDocument document : solrDocumentList) {
                ProductIndex productIndex=new ProductIndex();
                //这里的id是和server.xml中的配置相同的 而不是数据库中的pid
                productIndex.setPid((String)document.get("id"));
                productIndex.setCname((String)document.get("cname"));
                productIndex.setPdesc((String)document.get("pdesc"));
                productIndex.setShopPrice((double)document.get("shopPrice"));
                productIndex.setPimage((String)document.get("pimage"));
                //遍历高亮部分
                List<String> list = highlighting.get(document.get("id")).get("pname");
                String title="";
                if(list!=null && !list.isEmpty()){
                    //列表不为空,页面显示的就应该是列表中的内容(高亮过的内容)
                    title=list.get(0);
                }else{
                    //列表为空,标题不高亮
                    title=(String)document.get("pname");
                }
                productIndex.setPname(title);
                productlist.add(productIndex);
            }
            result.setItemList(productlist);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }


}
