package com.eb.pcshop.manager.service.impl;


import com.eb.pcshop.commons.util.WeekSoftUtils;
import com.eb.pcshop.manager.admininterface.ProductDataAnalysisService;

import com.eb.pcshop.manager.dao.*;
import com.eb.pcshop.manager.pojo.dto.CategoryIsHotByAge;

import com.eb.pcshop.manager.pojo.dto.CategoryQuantity;
import com.eb.pcshop.manager.pojo.dto.IndexAdminAllData;
import com.eb.pcshop.manager.pojo.dto.VipAndTurnover;
import com.eb.pcshop.manager.pojo.po.*;

import org.apache.ibatis.javassist.bytecode.Descriptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.swing.text.TabExpander;
import java.util.*;

/**
 * Created by Administrator on 2018/4/18.
 */
@Service
public class ProductDataAnalysisServiceImpl implements ProductDataAnalysisService {
    @Autowired
    private TabProductCustomerMapper tabProductCustomerMapper;
    @Autowired
    private TabUserCustomerMapper tabUserCustomerMapper;

    @Autowired
    private TabOrderCustomerMapper tabOrderCustomerMapper;

    @Autowired
    private TabCategoryCustomerMapper tabCategoryCustomerMapper;

    @Autowired
    private TabOrderMapper tabOrderMapper;


    /* @Autowired
    private TabOrderMapper tabOrderMapper;*/

    /**
     * 获取�?有的商品的结果集
     *
     * @return
     */
    @Override
    public List<TabProduct> getProductData() {
        //获取到商品的集合
        List<TabProduct> tabProductList = tabProductCustomerMapper.listProduct();

        return tabProductList;
    }

    /**
     * 获取商品的结果集,这个结果集是经过排序�?,只有前十条数�?
     *
     * @return
     */
    @Override
    public List<TabProduct> listProductCountSort() {
        List<TabProduct> tabProductList = tabProductCustomerMapper.listProductCountSoft();
        return tabProductList;
    }

    /**
     * 根据年龄的范围分析不同年龄段之间用户的喜欢什么类型的商品
     *
     * @param age_min 年龄的范围参数min
     * @param age_max 年龄的范围参数max
     * @return CategoryIsHotByAge 封装�?
     */
    @Override
    public CategoryIsHotByAge getDataByAgeRange(Integer age_min, Integer age_max) {
        //实例化对�?
        CategoryIsHotByAge categoryIsHotByAge = new CategoryIsHotByAge();
        //第一步根据年龄段找到的这个年龄段的用�?

        List<TabUser> userList = tabUserCustomerMapper.listUsersByAgeRange(age_min, age_max);

        //查询这个年龄段的�?有订�?
        List<Integer> uidList = new ArrayList<>();
        for (int i = 0; i < userList.size(); i++) {
            uidList.add(userList.get(i).getUid());
        }
        //打印这个UID的集�?
        List<TabOrder> tabOrderList = tabOrderCustomerMapper.listOrderByUids(uidList);
       //统计这个pname出现的次�?,存储,然后根据这个pname查询出分类的名称
        Map<String,Integer> countMap = new HashMap<>();
        for (int i= 0 ;i < tabOrderList.size();i++){
            String pname = tabOrderList.get(i).getPname();
            if (countMap.get(pname)==null){
                countMap.put(pname,1);
            }else{
                countMap.put(pname,countMap.get(pname)+1);
            }
        }
        //创建两个集合分别存储pname,和出现的次数
        List<String> pnameList = new ArrayList<>();
        List<Integer> categoryCount = new ArrayList<>();
        Iterator<Map.Entry<String,Integer>> iterator = countMap.entrySet().iterator();
        while (iterator.hasNext()){
            Map.Entry<String, Integer> entry = iterator.next();
            pnameList.add(entry.getKey());
            categoryCount.add(entry.getValue());
        }
        //通过这个pname去查询商品的
        List<TabProduct> productList = tabProductCustomerMapper.listProductByPid(pnameList);
        //创建�?个集合存储cid
        List<Integer> cidList = new ArrayList<>();
        for (TabProduct tabProduct : productList){
            cidList.add(tabProduct.getCid());
        }
        //根据cid去查询分�?
        List<TabCategory> categoryList = tabCategoryCustomerMapper.listCategoryByCid(cidList);
        List<String> categoryName= new ArrayList<>();
        for (TabCategory tabCategory:categoryList){
            categoryName.add(tabCategory.getCname());
        }
        categoryIsHotByAge.setCategoryCount(categoryCount);
        categoryIsHotByAge.setCategoryName(categoryName);
        return categoryIsHotByAge;
    }

    /**
     * 获取�?有的分类
     *
     * @return List<TabCategory>
     */
    @Override
    public List<TabCategory> getAllCategory() {
        List<TabCategory> tabCategoryList = tabCategoryCustomerMapper.listCategoryAll();
        System.out.println("service====="+tabCategoryList);
        return tabCategoryList;
    }
    /**
     * 获取这周内注册的会员人数和订单的成交�?
     * @return VipAndTurnover 封装类注册的会员的人数和订单的成交量
     */
    @Override
    public VipAndTurnover getVipAndTurnover() {
        //实例化对�?
        VipAndTurnover vipAndTurnover = new VipAndTurnover();
        //第一步查询出这一周内注册会员的人�?
        List<TabUser> userList = tabUserCustomerMapper.getVipCount();

        vipAndTurnover.setVipCount(userList.size());
        //第二步查询出这一周内的订单的成交�?
        List<TabOrder> orderList =tabOrderCustomerMapper.getTurnover();
        vipAndTurnover.setTurnover(orderList.size());
        System.out.println(orderList.size());
        return vipAndTurnover;
    }

    @Override
    public CategoryQuantity getGraphData() {
        //首先处理星期几的问题的顺序问�?;
        CategoryQuantity categoryQuantity = new CategoryQuantity();
        //调用工具�?
        List<String> weekSoft= WeekSoftUtils.getWeekSoft();
        categoryQuantity.setList(weekSoft);
        //�?要处理每种分�?,在一个星期每天的数据     map 集合  key 分类的名�?  , list 这个分类�?个星期每天的成交的订单的数据
        //查出以当前时间为节点的过去一个星期之内的�?有订�?
        List<TabOrder> tabOrderList =tabOrderCustomerMapper.getTurnover();
        //查询到所有的分类
        List<TabCategory> categoryList = tabCategoryCustomerMapper.listCategoryAll();
        //创建�?个map集合存储分类名称
       Map<String ,List<Integer>> map = new HashMap<>();
        //以cname为键,value  为一个集�?,存储了这个分类的这个星期的所有订�?
        for(TabCategory category : categoryList){
            for(TabOrder tabOrder : tabOrderList) {
                if (category.getCid()==tabOrder.getCid()){
                    map.put(category.getCname(),new ArrayList<Integer>());
                    break;
                }
            }
        }
        //创建七个集合分别存储每天成交的订�?
        List<TabOrder>mondayList = new ArrayList<>();
        List<TabOrder>tuesdayList = new ArrayList<>();
        List<TabOrder>wedensdayist = new ArrayList<>();
        List<TabOrder>thursdayList = new ArrayList<>();
        List<TabOrder>fridayList = new ArrayList<>();
        List<TabOrder>saturdayList = new ArrayList<>();
        List<TabOrder>sundayList = new ArrayList<>();
        for (TabOrder tabOrder : tabOrderList){
            //获取订单中下单的时间为一周的哪一�?,用了七个集合分别存储每天成交的订�?
            String day =WeekSoftUtils.getDataToWeek(tabOrder.getOtime());
            if (day.equals("星期�?")){
                //假如说这个订单是星期�?成交的订单就存储在星期一这个订单集合�?
                mondayList.add(tabOrder);
            }else if(day.equals("星期�?")){
                tuesdayList.add(tabOrder);
            }else if(day.equals("星期�?")){
                wedensdayist.add(tabOrder);
            }else if(day.equals("星期�?")){
                thursdayList.add(tabOrder);
            }else if(day.equals("星期�?")){
                fridayList.add(tabOrder);
            }else if(day.equals("星期�?")){
                saturdayList.add(tabOrder);
            }else if(day.equals("星期�?")){
                sundayList.add(tabOrder);
            }
        }
       //首先获取到今天是星期�?
        Date date = new Date();
        String today = WeekSoftUtils.getDataToWeek(date);
        System.out.println("今天�?:"+today);
        //创建�?个集�?
        //假如今天是星期一:数据存储方式应该�?2 3 4 5 6 7 1
        if(today.equals("星期�?")){
            //�?要创建一个共有的方法,解决代码重复代码的问�?
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, map);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            categoryQuantity.setMap(mapMonday);
            return categoryQuantity;
        }else if (today.equals("星期�?")){
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, map);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            categoryQuantity.setMap(mapTueday);

            Iterator<Map.Entry<String,List<Integer>>> iterator = mapTueday.entrySet().iterator();
            while (iterator.hasNext()){
                Map.Entry<String, List<Integer>> next = iterator.next();
                List<Integer> value = next.getValue();
                System.out.println("分类名称:"+next.getKey()+"-----------�?售量:"+value);
            }

            return categoryQuantity;
        }else if (today.equals("星期�?")){
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, map);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            categoryQuantity.setMap(mapWedensday);
            return categoryQuantity;
        }else if (today.equals("星期�?")){
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, map);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            categoryQuantity.setMap(mapThurday);
            return categoryQuantity;
        }else if (today.equals("星期�?")){
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, map);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            categoryQuantity.setMap(mapFriday);

            return categoryQuantity;
        }else if (today.equals("星期�?")){
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, map);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            categoryQuantity.setMap(mapSatuday);
            return categoryQuantity;
        }else if (today.equals("星期�?")){
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, map);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            categoryQuantity.setMap(mapSun);
            return categoryQuantity;
        }else{
            return null;
        }

    }
}
