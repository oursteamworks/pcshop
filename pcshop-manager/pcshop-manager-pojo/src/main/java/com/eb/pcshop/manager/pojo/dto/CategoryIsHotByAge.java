package com.eb.pcshop.manager.pojo.dto;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/4/20.
 */
public class CategoryIsHotByAge {

    private List<String> categoryName= new ArrayList<>();
    private List<Integer> categoryCount = new ArrayList<>();

    public List<String> getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(List<String> categoryName) {
        this.categoryName = categoryName;
    }

    public List<Integer> getCategoryCount() {
        return categoryCount;
    }

    public void setCategoryCount(List<Integer> categoryCount) {
        this.categoryCount = categoryCount;
    }

    @Override
    public String toString() {
        return "CategoryIsHotByAge{" +
                "categoryName=" + categoryName +
                ", categoryCount=" + categoryCount +
                '}';
    }
}
