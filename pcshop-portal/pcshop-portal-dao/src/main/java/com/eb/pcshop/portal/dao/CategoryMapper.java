package com.eb.pcshop.portal.dao;

import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.TabCategoryCustem;

import java.util.List;

/**
 * Created by Administrator on 2018/5/9.
 */
public interface CategoryMapper {
    List<TabCategoryCustem> listCategory();

    List<Product> listProduct();
}
