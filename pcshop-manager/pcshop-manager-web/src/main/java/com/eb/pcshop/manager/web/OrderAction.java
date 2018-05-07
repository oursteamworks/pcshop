package com.eb.pcshop.manager.web;


import com.eb.pcshop.manager.admininterface.OrderService;
import com.eb.pcshop.manager.pojo.dto.MessageResult;
import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.Order;
import com.eb.pcshop.manager.pojo.po.OrderCustom;
import com.eb.pcshop.manager.pojo.vo.OrderQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class OrderAction {

    @Autowired
    private OrderService orderService;

    @ResponseBody
    @RequestMapping(value = "/order", method = RequestMethod.GET)
    public MessageResult<OrderCustom> listItemsByPage(Page page, OrderQuery query) {
            MessageResult<OrderCustom> messageResult = new MessageResult<OrderCustom>();
        try {
            //code,msg,count,data
            //代码，消息，符合条件的记录数，指定页码的记录集合
            long count = orderService.countOrder(query);
            List<OrderCustom> data = orderService.listOrderByPage(page,query);
            for (OrderCustom datum : data) {
//                System.out.println(datum.getOtime());
            }
            messageResult.setCode(0);
            messageResult.setMsg("success");
            messageResult.setCount(count);
            messageResult.setData(data);
         } catch (Exception e) {
             e.printStackTrace();
        }
        return messageResult;
    }

    @ResponseBody
    @RequestMapping(value = "/order/batch")
    public int updateStatusByIds(@RequestParam("ids[]") List<String> ids){
        int i = 0;
        try {
            i = orderService.updateStatusByIds(ids);
        } catch (Exception e) {
             e.printStackTrace();
        }
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/removeOrder")
    public Integer removeOrder(Integer oid){
Integer result = 0;
       result=orderService.removeOrder(oid);
        return result;
    }
    //添加订单
    @ResponseBody
    @RequestMapping(value = "/addorder")
    public Integer addorder(Order order){
        System.out.println(order);
        Integer result = 0;
        result=orderService.addorder(order);
        return result;
    }
    //查询订单信息
    @ResponseBody
    @RequestMapping(value = "/updateOrder")
    public OrderCustom updateOrder(String oid, HttpSession session){
       OrderCustom order=orderService.queryorderbyid(oid);
       session.setAttribute("order",order);
         return order;
    }
    //编辑订单
    @ResponseBody
    @RequestMapping(value = "/editorder")
    public Integer editorder(Order order){
        System.out.println(order);
        Integer result = 0;
        result=orderService.editorder(order);
        return result;
    }
}
