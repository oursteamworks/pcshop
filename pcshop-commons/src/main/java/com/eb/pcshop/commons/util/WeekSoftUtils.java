package com.eb.pcshop.commons.util;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2018/4/26.
 */
public class WeekSoftUtils <T> {

    //判断订单中的时间是一周中的星期几订购的
    public static String getDataToWeek(Date date){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = dateFormat.format(date);
        String[] str = format.split("-");
        int year =0;
        int month = 0;
        int day =0 ;
        for (int i = 0; i < str.length; i++) {
            if(i==0){
                year=Integer.parseInt(str[i]);
            }else if(i==1){
                month=Integer.parseInt(str[i]);
            }else if(i==2){
                day=Integer.parseInt(str[i]);
            }
        }
        int iWeek=((day+2*month+3*(month+1)/5+year+year/4-year/100+year/400)%7)+1;
        switch(iWeek)
        {
            case 0: return "星期天";
            case 1: return "星期一";
            case 2: return "星期二";
            case 3: return "星期三";
            case 4: return "星期四";
            case 5: return "星期五";
            case 6: return "星期六";
            default: return "";
        }
    }


    public static List<String> getWeekSoft( Date date){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = dateFormat.format(date);
        String[] str = format.split("-");
        int year =0;
        int month = 0;
        int day =0 ;
        for (int i = 0; i < str.length; i++) {
            if(i==0){
                year=Integer.parseInt(str[i]);
            }else if(i==1){
                month=Integer.parseInt(str[i]);
            }else if(i==2){
                day=Integer.parseInt(str[i]);
            }
        }
        String today ="";
        int iWeek=((day+2*month+3*(month+1)/5+year+year/4-year/100+year/400)%7)+1;
        System.out.println(iWeek+"iweek");
        switch(iWeek)
        {
            case 0: today="星期天"; break;
            case 1: today="星期一"; break;
            case 2: today="星期二"; break;
            case 3: today="星期三"; break;
            case 4: today="星期四"; break;
            case 5: today="星期五"; break;
            case 6: today="星期六"; break;
        }
        //创建一个集合存储星期顺序
        List<String> list  = new ArrayList<>();
        //今天是星期天
        if (today.equals("星期天")){
            list.add("星期一");
            list.add("星期二");
            list.add("星期三");
            list.add("星期四");
            list.add("星期五");
            list.add("星期六");
            list.add("星期天");
            //今天是星期一
        }else if (today.equals("星期一")){
            list.add("星期二");
            list.add("星期三");
            list.add("星期四");
            list.add("星期五");
            list.add("星期六");
            list.add("星期天");
            list.add("星期一");
            //今天是星期二
        }else if (today.equals("星期二")) {
            list.add("星期三");
            list.add("星期四");
            list.add("星期五");
            list.add("星期六");
            list.add("星期天");
            list.add("星期一");
            list.add("星期二");
            //今天是星期三
        }else if (today.equals("星期三")) {

            list.add("星期四");
            list.add("星期五");
            list.add("星期六");
            list.add("星期天");
            list.add("星期一");
            list.add("星期二");
            list.add("星期三");
        } else if (today.equals("星期四")) {
            list.add("星期五");
            list.add("星期六");
            list.add("星期天");
            list.add("星期一");
            list.add("星期二");
            list.add("星期三");
            list.add("星期四");
        } else if (today.equals("星期五")) {
            //今天是星期五
            list.add("星期六");
            list.add("星期天");
            list.add("星期一");
            list.add("星期二");
            list.add("星期三");
            list.add("星期四");
            list.add("星期五");
        }else if (today.equals("星期六")) {
            //今天是星期六
            list.add("星期天");
            list.add("星期一");
            list.add("星期二");
            list.add("星期三");
            list.add("星期四");
            list.add("星期五");
            list.add("星期六");
        }
        return  list;
    }

}
