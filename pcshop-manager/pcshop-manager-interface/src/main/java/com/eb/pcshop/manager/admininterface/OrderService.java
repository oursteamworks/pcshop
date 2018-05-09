package com.eb.pcshop.manager.admininterface;


import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.Order;
import com.eb.pcshop.manager.pojo.po.OrderCustom;
import com.eb.pcshop.manager.pojo.vo.OrderQuery;

import java.util.List;

/**
 * User: Administrator
 * Date: 2018/4/18
 * Time: 23:53
 * Version:V1.0
 */
public interface OrderService {

    long countOrder(OrderQuery query);

    List<OrderCustom> listOrderByPage(Page page, OrderQuery query);

    int updateStatusByIds(List<String> ids);

    Integer removeOrder(Integer oid);

    Integer addorder(Order order);

    OrderCustom queryorderbyid(String oid);

    Integer editorder(Order order);
}
