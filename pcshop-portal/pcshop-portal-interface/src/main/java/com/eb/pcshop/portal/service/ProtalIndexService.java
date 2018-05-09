package com.eb.pcshop.portal.service;

import com.eb.pcshop.portal.pojo.po.Product;

import java.util.List;

/**
 * Created by Administrator on 2018/5/9.
 */
public interface ProtalIndexService {
    /**
     * 实现门户站点中的爆款清单的显示
     * @return List<Product>
     */
    List<Product> getHotCake();
}
