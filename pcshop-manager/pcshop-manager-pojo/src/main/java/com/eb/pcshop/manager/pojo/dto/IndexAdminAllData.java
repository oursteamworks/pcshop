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
        if (orderList.size()==0){
            for (TabCategory tabCategory :categoryList){
                mapSun.put(tabCategory.getCname(),0);
            }
        }else{
            for(TabCategory tabCategory :categoryList){
                Integer cid = tabCategory.getCid();
                String cname = tabCategory.getCname();
                for(TabOrder tabOrder :orderList){
                    if(cid!=tabOrder.getCid()){
                        mapSun.put(tabCategory.getCname(),0);
                        break;
                    }else{
                        if(mapSun.get(cname)==null){
                            mapSun.put(cname,1);
                        }else{
                            mapSun.put(cname,mapSun.get(cname)+1);
                        }
                        break;
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
                    map.put(entry.getKey(),list);
                    break;
                }
            }
        }
        return  map;
    }
}
