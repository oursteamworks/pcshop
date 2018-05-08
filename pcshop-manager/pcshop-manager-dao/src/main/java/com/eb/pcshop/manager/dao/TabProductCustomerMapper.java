package com.eb.pcshop.manager.dao;


import com.eb.pcshop.manager.pojo.po.TabProduct;

import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
public interface TabProductCustomerMapper {
    public List<TabProduct> listProduct();

    List<TabProduct> listProductCountSoft();

    List<TabProduct> listProductByPid(List<String> pnameList);
}
