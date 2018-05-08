package com.eb.pcshop.manager.web;

import com.eb.pcshop.manager.admininterface.ProductDataAnalysisService;
import com.eb.pcshop.manager.pojo.dto.CategoryIsHotByAge;
import com.eb.pcshop.manager.pojo.dto.CategoryQuantity;
import com.eb.pcshop.manager.pojo.dto.VipAndTurnover;
import com.eb.pcshop.manager.pojo.po.TabCategory;
import com.eb.pcshop.manager.pojo.po.TabProduct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.bind.SchemaOutputResolver;
import java.util.List;

/**
 * Created by Administrator on 2018/4/17.
 */
@Controller
@RequestMapping("/productIsHot")
public class ProductIsHot {
    @Autowired
    private ProductDataAnalysisService productDataAnalysisService;
    //

    @RequestMapping(value = "/pages/{productHot}")
    public String index(@PathVariable String productHot){

        return  "/pages"+"/"+productHot;
    }
    @RequestMapping(value = "/pages/{page1}/{page2}")
    public String page(@PathVariable String page1,@PathVariable String page2){

        return "/pages/"+page1+"/"+page2;
    }


    @ResponseBody
    @RequestMapping(value = "/productData" ,method = RequestMethod.GET)
    public List<TabProduct> productData(){
        List<TabProduct> tabProductList =productDataAnalysisService.getProductData();
        System.out.println(tabProductList);
        return tabProductList;
    }
    @ResponseBody
    @RequestMapping(value="/productCountSort",method = RequestMethod.GET)
    public List<TabProduct> productCountSort(){
        List<TabProduct> tabProductList = productDataAnalysisService.listProductCountSort();
        return  tabProductList;
    }
    /**
     *需要实现功能是,根据这个年龄段的人,分析他们喜欢哪类的商品
     * 横轴:分类名称,
     * 纵轴:每种分类的所对应成交量
     */
    @ResponseBody
    @RequestMapping(value="/getDataByAgeRange",method = RequestMethod.GET)
    public CategoryIsHotByAge getDataByAgeRange(Integer age_min,Integer age_max){

        System.out.println(age_min);
        System.out.println(age_max);
        CategoryIsHotByAge categoryIsHotByAge = productDataAnalysisService.getDataByAgeRange(age_min,age_max);
        System.out.println("web_____:"+categoryIsHotByAge);
        return categoryIsHotByAge;
    }
    @ResponseBody
    @RequestMapping(value = "getAllCategory",method = RequestMethod.GET)
    public List<TabCategory> getAllCategory(){

        List<TabCategory>tabCategoryList =productDataAnalysisService.getAllCategory();

        return  tabCategoryList;
    }

    @ResponseBody
    @RequestMapping(value = "/getAllProduct" ,method = RequestMethod.GET)
    public List<TabProduct> getAllProduct(){
        List<TabProduct> tabProductList = productDataAnalysisService.getProductData();
        return  tabProductList;
    }
    //获取到一周内的注册的会员的人数和订单的成交量
    @ResponseBody
    @RequestMapping(value = "/getVipAndTurnover",method = RequestMethod.GET)
    public VipAndTurnover getVipAndTurnover(){
        VipAndTurnover vipAndTurnover =productDataAnalysisService.getVipAndTurnover();

        return  vipAndTurnover;
    }
    //获取到图形上的所需要的数据
    @ResponseBody
    @RequestMapping(value = "/getGraphData",method = RequestMethod.GET)
    public CategoryQuantity getGraphData(){

        CategoryQuantity categoryQuantity = productDataAnalysisService.getGraphData();

        return  categoryQuantity;
    }


}
