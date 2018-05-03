package com.eb.pcshop.portal.web;

import com.eb.pcshop.commons.util.PropKit;
import com.eb.pcshop.portal.pojo.po.Picture;
import com.eb.pcshop.portal.pojo.po.Product;
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
        request.setAttribute("pictureList",pictureList);
        System.out.println("获取的集合长度为:"+pictureList.size());
        return "forward:/pcindex.jsp";
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
    public String showAdminProducts(String keyword,HttpSession session,@RequestParam(defaultValue="8")Integer pageSize,
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

}
