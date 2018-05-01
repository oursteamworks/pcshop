package com.eb.pcshop.manager.dao;

import com.eb.pcshop.manager.pojo.po.Category;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/20.
 */
public interface CategoryExtraMapper extends CategoryMapper {

    List<Category> listCategory();

}
