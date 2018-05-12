package com.eb.pcshop.manager.web;

import com.eb.pcshop.commons.util.FtpUtils;
import com.eb.pcshop.manager.admininterface.ServiceInterface;
import com.eb.pcshop.manager.pojo.dto.MessageObject;
import com.eb.pcshop.manager.pojo.dto.PageDto;
import com.eb.pcshop.manager.pojo.po.Category;
import com.eb.pcshop.manager.pojo.po.MessageResult;
import com.eb.pcshop.manager.pojo.po.Product;
import com.eb.pcshop.manager.pojo.po.ProductCustom;
import com.eb.pcshop.manager.pojo.vo.ProductVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.jms.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/13.
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
    //即将使用logback的日志，成员变量
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ServiceInterface serviceInterface;

    //类型注入
    @Autowired
    private JmsTemplate jmsTemplate;
    //名称注入
    @Resource
    private Destination topicDestination;

    /**
     * 跳转首页
     * @return
     */
    @RequestMapping("/index")
    public String toIndex() {
        return "indexManager";
    }

    @RequestMapping("/jsp/{pageName}")
    public String forwordOne(@PathVariable("pageName") String pageName) {
        return "pages/product/"+pageName;
    }

    /**
     * 商品列表的分页展示
     * @param pageDto
     * @return
     */
    @ResponseBody
    @RequestMapping("/listProductByPage")
    public MessageResult<ProductCustom> listProductByPage(PageDto pageDto,ProductVO productVO) {
        MessageResult<ProductCustom>  messageResult=new MessageResult<>();
        Long i=0L;
        List<ProductCustom> list =new ArrayList<ProductCustom>();
        list = serviceInterface.listProductByPage(pageDto,productVO);
        i=serviceInterface.countProduct(productVO);
        messageResult.setCode(0);
        messageResult.setMsg("success");
        messageResult.setCount(i);
        messageResult.setData(list);
        return messageResult;
    }

    /**
     *
     * 批量删除
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping("/removeBatchProduct")
    public int removeBatchProduct(@RequestParam("ids[]") String [] ids) {
        int i=0;
        List<Integer> list=new ArrayList<>();
        for (int j = 0; j < ids.length; j++) {
            list.add(Integer.parseInt(ids[j]));
        }
        System.out.println("list:"+list);
        try {
            i = serviceInterface.removeBatchProduct(list);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 修改商品的上下架状态
     * @return
     */
    @ResponseBody
    @RequestMapping("/updatePutaway")
    public int updatePutaway(@RequestParam("pid") String pid) {
        int i=0;
        try {
           i = serviceInterface.updatePutaway(pid);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 删除单个商品
     * @return 受影响的行数
     */
    @ResponseBody
    @RequestMapping("/removeOne")
    public int removeOne(String pid) {
        int i = serviceInterface.removeOne(pid);
        return i;
    }

    @ResponseBody
    @RequestMapping("/listCategory")
    public List<Category> listCategory() {
        List<Category> list= new ArrayList<>();
        list = serviceInterface.listCategory();
        return list;
    }

    /**
     * 编辑商品
     * @param product
     * @return
     */
    @ResponseBody
    @RequestMapping("/editProduct")
    public int editProduct(Product product) {
        int i=0;
        System.out.println("进入到editProduct方法");
        i = serviceInterface.editProduct(product);
        System.out.println(product.getPname());
        return i;
    }

    //跳转到编辑页面
     @RequestMapping("/toEditProduct")
    public String toEditProduct(String pid,HttpServletRequest request) {
         Product product= serviceInterface.getProduct(pid);
         request.setAttribute("ProductMsg",product);
         return "pages/product/editProduct";
    }

    /**
     * 添加商品
     * 需要实现消息队列
     * @param product
     * @return
     *
     */
    @ResponseBody
    @RequestMapping("/addProduct")
    public String addProduct(Product product,@RequestParam("file") MultipartFile file) {
        /*System.out.println("进入到addProduct方法");*/
        String port="116.62.199.189";
        int i=0;
        if(!file.isEmpty()){
            long time=new Date().getTime();
            String name = file.getOriginalFilename();//原始名字
            try {
                InputStream inputStream=file.getInputStream();
                FtpUtils.uploadFile(port, 21, "ftpuser", "1314zhi20", "/home/ftpuser/www/images",
                        "", time+"_"+name, inputStream);
                String pimage=port+"/images/"+time+"_"+name;
                product.setPimage(pimage);
                serviceInterface.addProduct(product);
                //为了实现消息队列实现,当插入商品的时候获取将其存入到消息队列中
                //需要将商品的id查询出来
                Product product_pid = serviceInterface.getProductPid();
                Integer pid = product_pid.getPid();
                /*i=serviceInterface.addPimage(String.valueOf(pid),pimage);*/
                jmsTemplate.send(topicDestination, new MessageCreator() {
                    @Override
                    public Message createMessage(Session session) throws JMSException {
                        TextMessage textMessage = session.createTextMessage(pid + "");
                        return textMessage;
                    }
                });

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if(i!=0){
            return "success";
        }else{
            return "failed";
        }
    }

    /**
     * 获取当前pid商品的信息
     * @param pid
     * @param session
     * @param
     */
    @RequestMapping("/currPid")
    public void currPid(String pid,HttpSession session) {
        Product product= serviceInterface.getProduct(pid);
        session.setAttribute("ProductMsg",product);
    }

    //跳转到编辑图片页面
    @RequestMapping("/editPimage")
    public String editPimage(String pid,HttpServletRequest request) {
        request.setAttribute("pimagePid",pid);
        return "pages/product/editPimage";
    }
    //编辑图片
    @ResponseBody
    @RequestMapping("/editPimageByPid")
    public String editPimageByPid(String pid,@RequestParam("pimage") MultipartFile file,HttpServletRequest request
    ,HttpServletResponse response) {
        int i=0;
        if(!file.isEmpty()){
            long time=new Date().getTime();
            String name = file.getOriginalFilename();//原始名字
                try {
                    InputStream inputStream=file.getInputStream();
                    FtpUtils.uploadFile("116.62.199.189", 21, "ftpuser", "1314zhi20", "/home/ftpuser/www/images",
                            "", time+"_"+name, inputStream);
                    String pimage="116.62.199.189/images/"+time+"_"+name;
                    i=serviceInterface.addPimage(pid,pimage);
                } catch (IOException e) {
                    e.printStackTrace();
                }
        }
        if(i!=0){
            return "success";
        }else{
            return "failed";
        }
    }

    /**
     * 一键导入索引
     * @param
     */
    @ResponseBody
    @RequestMapping("/importIndex")
    public MessageObject importIndex() {
        MessageObject messageObject=new MessageObject();
        messageObject = serviceInterface.importIndex();
        return messageObject;
    }
}
