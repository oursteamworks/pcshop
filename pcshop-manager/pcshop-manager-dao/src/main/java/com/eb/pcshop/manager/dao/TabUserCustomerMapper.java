package com.eb.pcshop.manager.dao;

import com.eb.pcshop.manager.pojo.po.TabUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/4/21.
 */
public interface TabUserCustomerMapper {



    List<TabUser> listUsersByAgeRange(@Param("age_min") Integer age_min, @Param("age_max") Integer age_max);

    List<TabUser> getVipCount();
}
