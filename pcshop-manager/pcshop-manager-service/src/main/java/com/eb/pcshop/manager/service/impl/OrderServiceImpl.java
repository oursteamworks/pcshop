package com.eb.pcshop.manager.service.impl;


import com.eb.pcshop.manager.admininterface.OrderService;
import com.eb.pcshop.manager.dao.OrderCustomMapper;
import com.eb.pcshop.manager.dao.OrderMapper;
import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.Order;
import com.eb.pcshop.manager.pojo.po.OrderCustom;
import com.eb.pcshop.manager.pojo.po.OrderExample;
import com.eb.pcshop.manager.pojo.vo.OrderQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderCustomMapper mapper;

    @Autowired
    private OrderMapper orderMapper;
    private Integer integer;

    @Override
    public long countOrder(OrderQuery query) {
        long count = 0L;
        try {
            count = mapper.countOrder(query);
        } catch (Exception e) {
             e.printStackTrace();
        }
        return count;
    }

    @Override
    public List<OrderCustom> listOrderByPage(Page page, OrderQuery query) {
        List<OrderCustom> list = null;
        try {
            list = mapper.listOrderByPage(page,query);
        } catch (Exception e) {
             e.printStackTrace();
        }
        return list;
    }

    @Override
    public int updateStatusByIds(List<String> ids) {
        int i = 0;
        try {
            //创建对象
            Order record = new Order();
            record.setOflag("0");
            //创建模板
            OrderExample example = new OrderExample();
             OrderExample.Criteria criteria = example.createCriteria();
            criteria.andOidIn(ids);

            //执行SQL语句

            i = orderMapper.updateByExampleSelective(record, example);
        } catch (Exception e) {
             e.printStackTrace();
        }
        return i;
    }

    @Override
    public Integer removeOrder(Integer oid) {
       Integer result= mapper.removeOrder(oid);
        return result;

    }

    @Override
    public Integer addorder(Order order) {
        Integer result=mapper.addorder(order);
        return result;
    }

    @Override
    public OrderCustom queryorderbyid(String oid) {
        OrderCustom order=mapper.queryorderbyid(oid);
        return order;
    }

    @Override
    public Integer editorder(Order order) {
        Integer result=mapper.editorder(order);
        return result;
    }
}








