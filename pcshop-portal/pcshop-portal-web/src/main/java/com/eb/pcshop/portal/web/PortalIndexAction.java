package com.eb.pcshop.portal.web;

import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.service.ProtalIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2018/5/9.
 */
@Controller
@RequestMapping("/portalIndex")
public class PortalIndexAction {

    @Autowired
    private ProtalIndexService protalIndexService;
    @RequestMapping(value = "/getHotCake",method = RequestMethod.GET)
    public String getHotCake(HttpServletRequest request){
        //获取到热销品的结果集
        List<Product> productList =protalIndexService.getHotCake();
        request.setAttribute("productList",productList);
        return "asus";
    }
}
