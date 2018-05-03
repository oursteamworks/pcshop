package com.eb.pcshop.manager.pojo.dto;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/4/26.
 */
public class CategoryQuantity <T> {

    //封装数据
    //第一个参数分装的是分类的名称
    //第二个参数分装的是这类上品在七天之内每天订单的成交量
    Map< T , List<T>> map = new HashMap<>();
    //封装星期的集合
    List<T> list = new ArrayList<>();


    public Map<T, List<T>> getMap() {
        return map;
    }

    public void setMap(Map<T, List<T>> map) {
        this.map = map;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
