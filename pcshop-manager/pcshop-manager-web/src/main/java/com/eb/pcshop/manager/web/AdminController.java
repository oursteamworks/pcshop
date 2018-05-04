package com.eb.pcshop.manager.web;

import com.eb.pcshop.commons.fdfs.FastDFSFile;
import com.eb.pcshop.commons.fdfs.FastDFSUtils;
import com.eb.pcshop.commons.util.StrKit;
import com.eb.pcshop.manager.admininterface.AdminService;
import com.eb.pcshop.manager.pojo.po.AdminMan;
import com.eb.pcshop.manager.pojo.po.User;
import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.dto.UserResult;
import com.eb.pcshop.manager.pojo.vo.UserQuery;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by xhj on 2018/4/16.
 */
@Controller
public class AdminController {
    //即将使用logback的日志，成员变量
    private org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AdminService adminService;

    /**
     * 管理员登录
     * @Param file:AdminMan adm
     * @return:String
     */
    @RequestMapping("/login")
    public String login(AdminMan adm,HttpServletRequest request,HttpSession session){
        /*System.out.println("aname:" + admin.getAname());
        System.out.println("apwd:" + admin.getApwd());*/
        request.setAttribute("loignMsg","");
        AdminMan a = adminService.selectAdmin(adm);
        System.out.println("intro==="+a.getIntroduce());
        if(a!=null){
            System.out.println("登陆成功");
            session.setAttribute("admin",a);
            return "index";
        }else if(adm==null||adm.equals("")){
            return"forward:/login.jsp";
        }else{
            request.setAttribute("loginMsg","用户名或密码错误！！！");
            return "forward:/login.jsp";
        }
    }

    /**
     * 图片上传到fastdfs中
     * @param file：MultipartFile file
     * @return：Map<String, Object> result
     */
    @ResponseBody
    @RequestMapping(value = "/uploadImage",method = RequestMethod.POST)
    public Map<String,Object> uploadImage(@RequestParam MultipartFile file){
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            FastDFSFile fastDFSFile = new FastDFSFile(file.getBytes(), file.getOriginalFilename(), file.getSize());
            String path = "http://47.98.199.218/" + FastDFSUtils.uploadFile(fastDFSFile);
            System.out.println(path);
            if(StrKit.notBlank(path)){
                result.put("code", 0);
                result.put("msg", "上传成功");
                Map<String,Object> dataMap = new HashMap<String,Object>();
                dataMap.put("src", path);
                result.put("data", dataMap);
            }else{
                result.put("code", 1);
                result.put("msg", "上传失败");
                Map<String,Object> dataMap = new HashMap<String,Object>();
                dataMap.put("src", "");
                result.put("data", dataMap);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 编辑管理员
     * @Param file:AdminMan a
     * @return:Integer
     */
    @ResponseBody
    @RequestMapping("/editDate")
    public Integer toEdit( AdminMan a,HttpSession session){
        int flag = 0;
        System.out.println("aname===" + a.getAname());
        System.out.println("phone===" + a.getPhone());
        System.out.println("amail===" + a.getAmail());
        System.out.println("introduce===" + a.getIntroduce());
        try {
            flag = adminService.editAdmin(a);
            if(flag>0){
                AdminMan adm = adminService.findAdmin();
                session.setAttribute("admin",adm);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return flag;
    }

    //跳转到用户首页
    @ResponseBody
    @RequestMapping(value = "/users",method = RequestMethod.GET)
    public UserResult<User> listUserByPage(Page page,UserQuery query){
//        System.out.println(uid);
        UserResult<User> userResult = new UserResult<>();
        try {
            //code,msg,count,data
            //代码，消息，符合条件的记录数，指定页码的记录集合
            long count = adminService.countUser(query);
//            System.out.println("count===" + count);
            List<User> data = adminService.listUserByPage(page,query);
//            System.out.println("data==="+data.get(0).getUname());
//            给结果集赋值
            userResult.setCode(0);
            userResult.setMsg("success");
            userResult.setCount(count);
            userResult.setData(data);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return userResult;
    }

    //更改用户的账户状态
    @ResponseBody
    @RequestMapping(value="/userpflag")
    public Integer userpflag(Integer uid){
        Integer c = 0;
        try {
            c = adminService.updatePflagByUid(uid);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        System.out.println("c===" + c);
        return c;
    }

    //根据UID更改用户的vip属性
    @ResponseBody
    @RequestMapping(value="/uservip")
    public Integer uservip(Integer uid){
        Integer c = 0;
        try {
            c = adminService.updateVipByUid(uid);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        System.out.println("c===" + c);
        return c;
    }

    //删除用户
    @ResponseBody
    @RequestMapping(value = "removeUser")
    public Integer removeUser(Integer uid){
        System.out.println(uid);
        Integer c = 0;
        try {
            c = adminService.removeUser(uid);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return c;
    }

    //批量删除
    @ResponseBody
    @RequestMapping(value = "removeBatchUser")
    public Integer removeBatchUser(@RequestParam("ids[]") String [] ids){
        Integer c = 0;
        List<Integer> list = new ArrayList<>();
        for(int i = 0; i < ids.length; i ++){
            list.add(Integer.parseInt(ids[i]));
        }
        c = adminService.removeBatchUser(list);

        return c;
    }

    //查询相关的用户信息
    @RequestMapping("/pages/user/useredit")
    public String useredit(Integer uid,HttpServletRequest request){
        //System.out.println(uid);
        User u = adminService.selectUserByUid(uid);
        request.setAttribute("user",u);

        return "pages/user/useredit";
    }

    //编辑用户
    @ResponseBody
    @RequestMapping("/userEdit")
    public Integer userEdit(User user){
        //User old_user = adminService.selectUserByUid(user.getUid());
        if(user.getPflag()==null){
            user.setPflag("0");
        }else{
            user.setPflag("1");
        }
        if(user.getVip()==null){
            user.setVip("0");
        }else{
            user.setVip("1");
        }
        Integer c = 0;
        c = adminService.editUser(user);
        System.out.println(c);


        return c;
    }

    //添加用户
    @ResponseBody
    @RequestMapping(value = "/userAdd")
    public Integer userAdd(User user,HttpSession session){

//        System.out.println("uname==="+user.getUname());
//        System.out.println("upwd=="+user.getUpwd());
//        System.out.println("bir==="+user.getBirthday());
//        System.out.println("sex==="+user.getSex());
//        System.out.println("age==="+user.getAge());
//        System.out.println("vip==="+user.getVip());
//        System.out.println("money==="+user.getMoney());
//        System.out.println("phone==="+user.getTellphone());
//        System.out.println("pflag==="+user.getPflag());
//        System.out.println("address==="+user.getAddress());
//        System.out.println("statue==="+user.getStatue());
        if(user.getPflag()==null){
            user.setPflag("0");
        }else{
            user.setPflag("1");
        }
        if(user.getVip()==null){
            user.setVip("0");
        }else{
            user.setVip("1");
        }

        Integer c = 0;

        try {
            AdminMan adm = (AdminMan) session.getAttribute("admin");
            user.setAid(adm.getAid());
            c = adminService.addUser(user);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return c;
    }

}
