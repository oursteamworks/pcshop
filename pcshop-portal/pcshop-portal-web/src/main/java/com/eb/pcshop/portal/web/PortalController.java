package com.eb.pcshop.portal.web;

import com.eb.pcshop.commons.util.PropKit;
import com.eb.pcshop.portal.service.ServiceInterface;
import com.eb.pcshop.portal.pojo.po.Picture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
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
        return "index";
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

}
