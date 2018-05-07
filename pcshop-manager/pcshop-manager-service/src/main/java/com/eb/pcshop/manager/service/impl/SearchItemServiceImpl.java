package com.eb.pcshop.manager.service.impl;

import com.eb.pcshop.commons.dto.MessageObject;
import com.eb.pcshop.manager.admininterface.ItemService;
import com.eb.pcshop.manager.dao.AdminManCustomerMapper;
import com.eb.pcshop.manager.dao.AdminManMapper;
import com.eb.pcshop.manager.pojo.vo.TbItemIndex;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * Created by xhj on 2018/5/7/007.
 */
@Service
public class SearchItemServiceImpl implements ItemService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AdminManCustomerMapper adminManCustomerDao;

    @Autowired
    private SolrServer solrServer;

    @Override
    public MessageObject importIndexLibrary() {
        MessageObject mo = new MessageObject();
        mo.setSuccess(false);
        try {
            //1.采集数据
            List<TbItemIndex> list = adminManCustomerDao.listItemByIndex();
            //2.添加到索引库
            //a.先遍历
            for (TbItemIndex item : list){
                //b.创建一个新的文档对象
                SolrInputDocument document = new SolrInputDocument();
                //c.给每个文档对象属性设入值
                document.addField("id",item.getPid());
                document.addField("item_pname",item.getPname());
                document.addField("item_shopPrice",item.getShopPrice());
                document.addField("item_pdesc",item.getPdesc());
                document.addField("item_pimage",item.getPimage());
                document.addField("item_category_cname",item.getCname());
                //d.写入数据域
                solrServer.add(document);
            }
            //e.提交
            solrServer.commit();
            mo.setSuccess(true);
            mo.setMsg("success");
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return mo;
    }
}
