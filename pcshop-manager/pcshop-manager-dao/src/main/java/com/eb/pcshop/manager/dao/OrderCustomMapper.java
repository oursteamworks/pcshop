package com.eb.pcshop.manager.dao;


import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.Order;
import com.eb.pcshop.manager.pojo.po.OrderCustom;
import com.eb.pcshop.manager.pojo.vo.OrderQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User: Administrator
 * Date: 2018/4/18
 * Time: 23:12
 * Version:V1.0
 */
public interface OrderCustomMapper {
    long countOrder(@Param("query") OrderQuery query);

   List<OrderCustom> listOrderByPage(@Param("page") Page page, @Param("query") OrderQuery query);

  Integer removeUser(Integer oid);

    Integer removeOrder(Integer oid);

    Integer addorder(Order order);

    OrderCustom queryorderbyid(String oid);

    Integer editorder(Order order);
}
