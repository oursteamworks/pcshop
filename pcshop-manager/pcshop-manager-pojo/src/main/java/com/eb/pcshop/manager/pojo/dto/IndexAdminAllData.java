package com.eb.pcshop.manager.pojo.dto;

import com.eb.pcshop.manager.pojo.po.TabCategory;
import com.eb.pcshop.manager.pojo.po.TabOrder;

import java.util.*;

/**
 * Created by Administrator on 2018/4/26.
 */
public class IndexAdminAllData {

    /**
     * 处理图形上的一部分数据的问题
     * @param orderList 一个星期中每天的成交订单的集合信息
     * @param categoryList 所有的分类信息,后来可以修改为销售榜的前五名分类
     * @param map 没有的任何数据信息的集合
     * @return 返回的处理好的数据
     */
    //假如今天是星期五
    public static Map<String , List<Integer>> dataTreat(List<TabOrder> orderList,List<TabCategory> categoryList, Map<String ,List<Integer>> map){
        //统计这个订单中
        Map<String ,Integer> mapSun = new HashMap<>();
        for (TabOrder tabOrder :orderList){
            for (TabCategory tabCategory :categoryList){
                String cname = tabCategory.getCname();
                //这里只是将订单中存在的分类加入到了集合中去,并没有将每个分类都加入到集合中去
                if(tabOrder.getCid()==tabCategory.getCid()){
                    if(mapSun.get(cname)==null){
                        mapSun.put(cname,1);
                    }else{
                        mapSun.put(cname,mapSun.get(cname)+1);
                    }
                }
            }
        }
        Iterator<Map.Entry<String,List<Integer>>> iterator = map.entrySet().iterator();
        Iterator<Map.Entry<String,Integer>> iteratorSun = mapSun.entrySet().iterator();
        while (iterator.hasNext()){
            Map.Entry<String, List<Integer>> entry = iterator.next();
            while (iteratorSun.hasNext()){
                Map.Entry<String, Integer> entrySun = iteratorSun.next();
                if (entry.getKey().equals(entrySun.getKey())){
                    List<Integer> list = entry.getValue();
                    list.add(entrySun.getValue());
                }
            }
        }
        return  map;
    }



}
