package com.eb.pcshop.manager.pojo.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ¿×Ôóçù on 2018/5/9.
 */
public class IndexAdminSeriesData {
    private String name;
    private String type;
    private String stack;
    private List<Integer> data=new ArrayList<>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStack() {
        return stack;
    }

    public void setStack(String stack) {
        this.stack = stack;
    }

    public List<Integer> getData() {
        return data;
    }

    public void setData(List<Integer> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "IndexAdminSeriesData{" +
                "name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", stack='" + stack + '\'' +
                ", data=" + data +
                '}';
    }
}
