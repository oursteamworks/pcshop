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
     * è·åæ?æçååçç»æé
     *
     * @return
     */
    @Override
    public List<TabProduct> getProductData() {
        //è·åå°ååçéå
        List<TabProduct> tabProductList = tabProductCustomerMapper.listProduct();

        return tabProductList;
    }

    /**
     * è·åååçç»æé,è¿ä¸ªç»æéæ¯ç»è¿æåºç?,åªæååæ¡æ°æ?
     *
     * @return
     */
    @Override
    public List<TabProduct> listProductCountSort() {
        List<TabProduct> tabProductList = tabProductCustomerMapper.listProductCountSoft();
        return tabProductList;
    }

    /**
     * æ ¹æ®å¹´é¾çèå´åæä¸åå¹´é¾æ®µä¹é´ç¨æ·çåæ¬¢ä»ä¹ç±»åçåå
     *
     * @param age_min å¹´é¾çèå´åæ°min
     * @param age_max å¹´é¾çèå´åæ°max
     * @return CategoryIsHotByAge å°è£ç±?
     */
    @Override
    public CategoryIsHotByAge getDataByAgeRange(Integer age_min, Integer age_max) {
        //å®ä¾åå¯¹è±?
        CategoryIsHotByAge categoryIsHotByAge = new CategoryIsHotByAge();
        //ç¬¬ä¸æ­¥æ ¹æ®å¹´é¾æ®µæ¾å°çè¿ä¸ªå¹´é¾æ®µçç¨æ?

        List<TabUser> userList = tabUserCustomerMapper.listUsersByAgeRange(age_min, age_max);

        //æ¥è¯¢è¿ä¸ªå¹´é¾æ®µçæ?æè®¢å?
        List<Integer> uidList = new ArrayList<>();
        for (int i = 0; i < userList.size(); i++) {
            uidList.add(userList.get(i).getUid());
        }
        //æå°è¿ä¸ªUIDçéå?
        List<TabOrder> tabOrderList = tabOrderCustomerMapper.listOrderByUids(uidList);
       //ç»è®¡è¿ä¸ªpnameåºç°çæ¬¡æ?,å­å¨,ç¶åæ ¹æ®è¿ä¸ªpnameæ¥è¯¢åºåç±»çåç§°
        Map<String,Integer> countMap = new HashMap<>();
        for (int i= 0 ;i < tabOrderList.size();i++){
            String pname = tabOrderList.get(i).getPname();
            if (countMap.get(pname)==null){
                countMap.put(pname,1);
            }else{
                countMap.put(pname,countMap.get(pname)+1);
            }
        }
        //åå»ºä¸¤ä¸ªéååå«å­å¨pname,ååºç°çæ¬¡æ°
        List<String> pnameList = new ArrayList<>();
        List<Integer> categoryCount = new ArrayList<>();
        Iterator<Map.Entry<String,Integer>> iterator = countMap.entrySet().iterator();
        while (iterator.hasNext()){
            Map.Entry<String, Integer> entry = iterator.next();
            pnameList.add(entry.getKey());
            categoryCount.add(entry.getValue());
        }
        //éè¿è¿ä¸ªpnameå»æ¥è¯¢ååç
        List<TabProduct> productList = tabProductCustomerMapper.listProductByPid(pnameList);
        //åå»ºä¸?ä¸ªéåå­å¨cid
        List<Integer> cidList = new ArrayList<>();
        for (TabProduct tabProduct : productList){
            cidList.add(tabProduct.getCid());
        }
        //æ ¹æ®cidå»æ¥è¯¢åç±?
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
     * è·åæ?æçåç±»
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
     * è·åè¿å¨åæ³¨åçä¼åäººæ°åè®¢åçæäº¤é?
     * @return VipAndTurnover å°è£ç±»æ³¨åçä¼åçäººæ°åè®¢åçæäº¤é
     */
    @Override
    public VipAndTurnover getVipAndTurnover() {
        //å®ä¾åå¯¹è±?
        VipAndTurnover vipAndTurnover = new VipAndTurnover();
        //ç¬¬ä¸æ­¥æ¥è¯¢åºè¿ä¸å¨åæ³¨åä¼åçäººæ?
        List<TabUser> userList = tabUserCustomerMapper.getVipCount();

        vipAndTurnover.setVipCount(userList.size());
        //ç¬¬äºæ­¥æ¥è¯¢åºè¿ä¸å¨åçè®¢åçæäº¤é?
        List<TabOrder> orderList =tabOrderCustomerMapper.getTurnover();
        vipAndTurnover.setTurnover(orderList.size());
        System.out.println(orderList.size());
        return vipAndTurnover;
    }

    @Override
    public CategoryQuantity getGraphData() {
        //é¦åå¤çææå çé®é¢çé¡ºåºé®é¢?;
        CategoryQuantity categoryQuantity = new CategoryQuantity();
        //è°ç¨å·¥å·ç±?
        List<String> weekSoft= WeekSoftUtils.getWeekSoft();
        categoryQuantity.setList(weekSoft);
        //é?è¦å¤çæ¯ç§åç±?,å¨ä¸ä¸ªæææ¯å¤©çæ°æ®     map éå  key åç±»çåç§?  , list è¿ä¸ªåç±»ä¸?ä¸ªæææ¯å¤©çæäº¤çè®¢åçæ°æ®
        //æ¥åºä»¥å½åæ¶é´ä¸ºèç¹çè¿å»ä¸ä¸ªææä¹åçæ?æè®¢å?
        List<TabOrder> tabOrderList =tabOrderCustomerMapper.getTurnover();
        //æ¥è¯¢å°ææçåç±»
        List<TabCategory> categoryList = tabCategoryCustomerMapper.listCategoryAll();
        //åå»ºä¸?ä¸ªmapéåå­å¨åç±»åç§°
       Map<String ,List<Integer>> map = new HashMap<>();
        //ä»¥cnameä¸ºé®,value  ä¸ºä¸ä¸ªéå?,å­å¨äºè¿ä¸ªåç±»çè¿ä¸ªææçææè®¢å?
        for(TabCategory category : categoryList){
            for(TabOrder tabOrder : tabOrderList) {
                if (category.getCid()==tabOrder.getCid()){
                    map.put(category.getCname(),new ArrayList<Integer>());
                    break;
                }
            }
        }
        //åå»ºä¸ä¸ªéååå«å­å¨æ¯å¤©æäº¤çè®¢å?
        List<TabOrder>mondayList = new ArrayList<>();
        List<TabOrder>tuesdayList = new ArrayList<>();
        List<TabOrder>wedensdayist = new ArrayList<>();
        List<TabOrder>thursdayList = new ArrayList<>();
        List<TabOrder>fridayList = new ArrayList<>();
        List<TabOrder>saturdayList = new ArrayList<>();
        List<TabOrder>sundayList = new ArrayList<>();
        for (TabOrder tabOrder : tabOrderList){
            //è·åè®¢åä¸­ä¸åçæ¶é´ä¸ºä¸å¨çåªä¸å¤?,ç¨äºä¸ä¸ªéååå«å­å¨æ¯å¤©æäº¤çè®¢å?
            String day =WeekSoftUtils.getDataToWeek(tabOrder.getOtime());
            if (day.equals("ææä¸?")){
                //åå¦è¯´è¿ä¸ªè®¢åæ¯ææä¸?æäº¤çè®¢åå°±å­å¨å¨ææä¸è¿ä¸ªè®¢åéåä¸?
                mondayList.add(tabOrder);
            }else if(day.equals("ææäº?")){
                tuesdayList.add(tabOrder);
            }else if(day.equals("ææä¸?")){
                wedensdayist.add(tabOrder);
            }else if(day.equals("ææå?")){
                thursdayList.add(tabOrder);
            }else if(day.equals("ææäº?")){
                fridayList.add(tabOrder);
            }else if(day.equals("ææå?")){
                saturdayList.add(tabOrder);
            }else if(day.equals("ææå¤?")){
                sundayList.add(tabOrder);
            }
        }
       //é¦åè·åå°ä»å¤©æ¯ææå?
        Date date = new Date();
        String today = WeekSoftUtils.getDataToWeek(date);
        System.out.println("ä»å¤©æ?:"+today);
        //åå»ºä¸?ä¸ªéå?
        //åå¦ä»å¤©æ¯ææä¸:æ°æ®å­å¨æ¹å¼åºè¯¥æ?2 3 4 5 6 7 1
        if(today.equals("ææä¸?")){
            //é?è¦åå»ºä¸ä¸ªå±æçæ¹æ³,è§£å³ä»£ç éå¤ä»£ç çé®é¢?
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, map);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            categoryQuantity.setMap(mapMonday);
            return categoryQuantity;
        }else if (today.equals("ææäº?")){
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
                System.out.println("åç±»åç§°:"+next.getKey()+"-----------é?å®é:"+value);
            }

            return categoryQuantity;
        }else if (today.equals("ææä¸?")){
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, map);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            categoryQuantity.setMap(mapWedensday);
            return categoryQuantity;
        }else if (today.equals("ææå?")){
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, map);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            categoryQuantity.setMap(mapThurday);
            return categoryQuantity;
        }else if (today.equals("ææäº?")){
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, map);
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, mapSatuday);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            categoryQuantity.setMap(mapFriday);

            return categoryQuantity;
        }else if (today.equals("ææå?")){
            Map<String, List<Integer>> mapSun = IndexAdminAllData.dataTreat(sundayList, categoryList, map);
            Map<String, List<Integer>> mapMonday = IndexAdminAllData.dataTreat(mondayList, categoryList, mapSun);
            Map<String, List<Integer>> mapTueday = IndexAdminAllData.dataTreat(tuesdayList, categoryList, mapMonday);
            Map<String, List<Integer>> mapWedensday = IndexAdminAllData.dataTreat(wedensdayist, categoryList, mapTueday);
            Map<String, List<Integer>> mapThurday = IndexAdminAllData.dataTreat(thursdayList, categoryList, mapWedensday);
            Map<String, List<Integer>> mapFriday = IndexAdminAllData.dataTreat(fridayList, categoryList, mapThurday);
            Map<String, List<Integer>> mapSatuday = IndexAdminAllData.dataTreat(saturdayList, categoryList, mapFriday);
            categoryQuantity.setMap(mapSatuday);
            return categoryQuantity;
        }else if (today.equals("ææå¤?")){
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
