package com.eb.pcshop.portal.service;

import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.TabCategoryCustem;

import java.util.List;

/**
 * Created by Administrator on 2018/5/9.
 */
public interface CategoryService {
    List<TabCategoryCustem> listCategory();

    List<Product> listProduct();
}
