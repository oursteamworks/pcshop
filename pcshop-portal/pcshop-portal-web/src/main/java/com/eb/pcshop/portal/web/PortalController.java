package com.eb.pcshop.portal.web;

import com.eb.pcshop.commons.util.PropKit;
import com.eb.pcshop.portal.pojo.po.Picture;
import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.TabCategoryCustem;
import com.eb.pcshop.portal.pojo.vo.TbSearchItemResult;
import com.eb.pcshop.portal.service.CategoryService;
import com.eb.pcshop.portal.service.ProtalIndexService;
import com.eb.pcshop.portal.service.ServiceInterface;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/25.
 */
@Controller
public class PortalController {
    @Autowired
    private ServiceInterface serviceInterface;
    @Autowired
    private ProtalIndexService protalIndexService;

    @Autowired
    private CategoryService categoryService;

    /**
     * 获取轮播图集合
     * @param request
     * @return
     */
    @RequestMapping("/")
    public  String getCategory(HttpServletRequest request){
        //获取到配置文件中的轮播图的cid 根据cid去查询相对应的轮播图
        Integer cid = PropKit.use("index.properties").getInt("lunbo.cid");
        //调用service层方法
        List<Picture> pictureList = serviceInterface.listPictureByCid(cid);
        //解决爆款清单问题
        List<Product> productList =protalIndexService.getHotCake();
        //查询所有分类集合
        List<TabCategoryCustem> categoryList = categoryService.listCategory();
        //查询所有商品集合
        List<Product> proList = categoryService.listProduct();
        request.setAttribute("categoryList",categoryList);
        request.setAttribute("proList",proList);
        request.setAttribute("productList",productList);
        request.setAttribute("pictureList",pictureList);
        return "asus";
    }

    /**
     * 根据url路径跳转页面
     * @param pageName
     * @return
     */
    @RequestMapping("/{pageNmae}")
    public  String forWord(@PathVariable("pageNmae")String pageName){
        return pageName;
    }

     /**
     * 首页模糊查询
     * @param keyword
     * @return
     */
   /* @RequestMapping("/portal/searchByKeyword")
    public  String searchByKeyword(String keyword){
        List<Product> productList=new ArrayList<>();
        productList = serviceInterface.serviceInterface(keyword);
        return "search";
    }*/
    @RequestMapping("/portal/searchByKeyword")
    public String showAdminProducts(String keyword,HttpSession session,@RequestParam(defaultValue="4")Integer pageSize,
                                        @RequestParam(defaultValue="1")Integer currentPage,HttpServletRequest request) {
        @SuppressWarnings("unused")
        Page<Object> page = PageHelper.startPage(currentPage, pageSize);

        List<Product> list=serviceInterface.showProducts(keyword);

        StringBuffer requestURL = request.getRequestURL();
        int indexOf = requestURL.lastIndexOf("/");
        String servletMappingName = requestURL.substring(indexOf+1);
        request.setAttribute("servletMappingName", servletMappingName);
        PageInfo<Product> pageInfo = new PageInfo<>(list, 4);
        int[] nums = pageInfo.getNavigatepageNums();
        session.setAttribute("nums", nums);
        session.setAttribute("productsList", list);
        session.setAttribute("page", pageInfo);
        request.setAttribute("keyword", keyword);
        return "search";
    }


    @RequestMapping("/searchIndex")
    public String searchIndex(String keyword,@RequestParam(defaultValue = "1")int pageIndex,HttpServletRequest request){
        //pageIndex 当前页 页码
        //pageSize 每页显示条数

        int pageSize = PropKit.use("file.properties").getInt("search.pageSize");

        TbSearchItemResult result =serviceInterface.searchIndex(keyword,pageIndex,pageSize);
        request.setAttribute("page",result);
        request.setAttribute("productsList",result.getItemList());
        request.setAttribute("keyword",keyword);
        return "search";
    }



}
