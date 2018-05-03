package com.eb.pcshop.manager.pojo.dto;

import java.util.Arrays;

/**
 * Created by Administrator on 2018/4/17.
 */
public class ProductIsHotData{
    //封装商品的名称的数组
    private String [] pnameArr = null;
    private int [] countArr =null;

    public int[] getCountArr() {
        return countArr;
    }

    public void setCountArr(int[] countArr) {
        this.countArr = countArr;
    }

    public String[] getPnameArr() {
        return pnameArr;
    }

    public void setPnameArr(String[] pnameArr) {
        this.pnameArr = pnameArr;
    }

    @Override
    public String toString() {
        return "ProductIsHotData{" +
                "pnameArr=" + Arrays.toString(pnameArr) +
                ", countArr=" + Arrays.toString(countArr) +
                '}';
    }
}
