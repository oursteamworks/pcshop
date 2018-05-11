package com.eb.pcshop.portal.listener;

import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.ProductIndex;
import com.eb.pcshop.portal.service.ServiceInterface;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;

import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * Created by Administrator on 2018/5/11.
 */
public class ProductAddMessageListener implements MessageListener{

    @Autowired
    private ServiceInterface serviceInterface;
    @Autowired
    private SolrServer solrServer;
    @Override
    public void onMessage(Message message) {

        try {
           //第一步获取消息队列中的消息
           TextMessage textMessage = (TextMessage)message;
            String text = textMessage.getText();
            int pid = Integer.parseInt(text);
            //根据id查询出商品的信息
            ProductIndex product  = serviceInterface.getProductById(pid);
            //3 更新索引库(item--document)
            //获取文档对象
            SolrInputDocument document = new SolrInputDocument();
            document.setField("id",product.getPid());
            document.setField("pname",product.getPname());
            document.setField("shopPrice",product.getShopPrice());
            document.setField("pdesc",product.getPdesc());
            document.setField("cname",product.getCname());
            document.setField("pimage",product.getPimage());
            //写入索引库
            solrServer.add(document);
            //提交
            solrServer.commit();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
