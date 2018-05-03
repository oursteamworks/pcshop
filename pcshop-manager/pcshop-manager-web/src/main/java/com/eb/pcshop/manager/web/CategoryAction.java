package com.eb.pcshop.manager.web;

import com.eb.pcshop.manager.admininterface.CategoryService;
import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.MessageResult;
import com.eb.pcshop.manager.pojo.po.TabCategory;
import com.eb.pcshop.manager.pojo.po.TabCategoryCustem;
import com.eb.pcshop.manager.pojo.vo.TabCategoryQuery;
import com.eb.pcshop.manager.pojo.vo.UpdateAnameQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/4/17.
 */
@Controller
public class CategoryAction {

    @Autowired
    private CategoryService categoryService;

    /**
     * 分页查询数据
     * @param page 分页所需数据
     * @param query 模糊查询所需数据
     * @return  分页数据
     */
    @ResponseBody
    @RequestMapping(value = "/category/listCategorys",method = RequestMethod.GET)
    public MessageResult<TabCategory> showAddCategory(Page page,TabCategoryQuery query){
        MessageResult<TabCategory> messageResult = new MessageResult<TabCategory>();
        try {
            long count = categoryService.countCategorys(query);
            List<TabCategory> data = categoryService.listCategorysByPage(page,query);
            messageResult.setCode(0);
            messageResult.setMsg("success");
            messageResult.setCount(count);
            messageResult.setData(data);
        }catch (Exception e){
            e.printStackTrace();
        }
        return messageResult;
    }
    @ResponseBody
    @RequestMapping(value = "/category/batch")
    public int updateCstatusByIds(@RequestParam("ids[]") List<Integer> ids){
        int i = 0;
        System.out.println(ids);
        try{
            i=categoryService.updateCstatusByIds(ids);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  i;
    }

    @ResponseBody
    @RequestMapping(value = "/category/selectCategoryByCname")
    public boolean getCategoryByCname(String cname){
        boolean flg = false;
        TabCategory tabCategory = null;
        System.out.printf(cname);
        try{
            tabCategory=categoryService.getCategoryByCname(cname);
            if(tabCategory!=null){
                flg=true;
            }
            System.out.println(tabCategory);
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println(flg);
        return  flg;
    }

    @ResponseBody
    @RequestMapping(value = "/category/addCategory")
    public boolean addCategory(TabCategory tabCategory){
        System.out.println(tabCategory);
        boolean flg = false;
        try {
            int a = categoryService.addCategory(tabCategory);
            if(a!=0){
                flg=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flg;
    }
    @ResponseBody
    @RequestMapping(value = "/category/deleteCategoryByCid")
    public boolean deleteCategoryByCid(String cid){
        boolean flg = false;
        try {
            int a = categoryService.deleteCategoryByCid(cid);
            if(a!=0){
                flg=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flg;
    }

    @RequestMapping(value = "/category/getCategotyByCid")
    public String  getCategotyByCid(String cid ,Model model){
        TabCategoryCustem tabCategoryCustem = null;
        List<String> admList = new ArrayList<>();
        UpdateAnameQuery admQuery = null;
       try{
           tabCategoryCustem = categoryService.getCategotyByCid(cid);
           List<UpdateAnameQuery>  admQueryList= categoryService.listAdmName();
            model.addAttribute("tabCategoryCustem",tabCategoryCustem);
           model.addAttribute("admQueryList",admQueryList);
           System.out.println(tabCategoryCustem);
           System.out.println(admQueryList);
       }catch (Exception e){
           e.printStackTrace();
       }
       return "/pages/category/updateCategory";
    }

    @ResponseBody
    @RequestMapping(value = "/category/editCategory")
    public boolean editCategory(TabCategory tabCategory){
        boolean flg = false;
        try {
            flg = categoryService.editCategory(tabCategory);

        }catch (Exception e){
            e.printStackTrace();
        }
        return flg;
    }
    @ResponseBody
    @RequestMapping(value = "/category/editCstatusByCid")
    public boolean editCstatusByCid(String cid ,String cstatus){
        System.out.println("cid+"+cid+","+"cstatus"+cstatus);
        boolean flg = false;
        try {
            flg = categoryService.editCstatusByCid(cid,cstatus);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  flg;

    }
}
