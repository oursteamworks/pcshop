package com.eb.pcshop.manager.dao;


import com.eb.pcshop.manager.pojo.po.TabOrder;

import java.util.List;

/**
 * Created by Administrator on 2018/4/21.
 */
public interface TabOrderCustomerMapper {
    List<TabOrder> listOrderByUids(List<Integer> uidList);

    List<TabOrder> getTurnover();

    List<TabOrder> listOrderAll();
}
