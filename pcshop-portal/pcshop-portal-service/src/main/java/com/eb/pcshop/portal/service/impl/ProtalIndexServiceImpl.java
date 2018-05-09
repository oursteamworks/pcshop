package com.eb.pcshop.portal.service.impl;

import com.eb.pcshop.portal.dao.ProtalIndexMapper;
import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.service.ProtalIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/9.
 */
@Service
public class ProtalIndexServiceImpl implements ProtalIndexService{
    @Autowired
    private ProtalIndexMapper protalIndexMapper;
    @Override
    public List<Product> getHotCake() {
        List<Product> productList = protalIndexMapper.getHotCakeList();
        return productList;
    }
}
