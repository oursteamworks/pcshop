package com.eb.pcshop.manager.dao;

import com.eb.pcshop.manager.pojo.po.TabCategory;

import java.util.List;

/**
 * Created by Administrator on 2018/4/24.
 */
public interface TabCategoryCustomerMapper {

    List<TabCategory>listCategoryByCid(List<Integer> cidList);

    List<TabCategory> listCategoryAll();
}
