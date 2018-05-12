package com.eb.pcshop.portal.service.impl;

import com.eb.pcshop.commons.jedis.JedisClient;
import com.eb.pcshop.commons.util.JsonUtils;
import com.eb.pcshop.commons.util.StrKit;
import com.eb.pcshop.portal.dao.CategoryMapper;
import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.TabCategoryCustem;
import com.eb.pcshop.portal.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 查询所有商品及分类
 * Created by Administrator on 2018/5/9.
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Autowired
    private JedisClient jedisClient;

    @Override
    public List<TabCategoryCustem> listCategory() {
        //先去缓存中查询数据，如果有直接返回，
        try{
            String category = jedisClient.get("categoryList");
            //如果不为空，说明取到值， 并且是json格式
            if(StrKit.notBlank(category)){
                List<TabCategoryCustem> categoryList = JsonUtils.jsonToList(category, TabCategoryCustem.class);
                return  categoryList;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        //如果没有去数据库查询数据
        List<TabCategoryCustem> categoryList =categoryMapper.listCategory();
        //否则的话 就把这个查询到的数据写到redis中
        try {
            jedisClient.set("categoryList",  JsonUtils.objectToJson(categoryList));
            System.out.println("将数据存取到redis中");
        }catch (Exception e){
            e.printStackTrace();
        }
        return categoryList;

    }

    @Override
    public List<Product> listProduct() {
        //先去缓存中查询数据，如果有直接返回，
        try{
            String pro = jedisClient.get("proList");
            //如果不为空，说明取到值， 并且是json格式
            if(StrKit.notBlank(pro)){
                List<Product> proList = JsonUtils.jsonToList(pro, Product.class);
                return  proList;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        //如果没有去数据库查询数据
        List<Product> proList =categoryMapper.listProduct();
        //否则的话 就把这个查询到的数据写到redis中
        try {
            jedisClient.set("proList",  JsonUtils.objectToJson(proList));
            System.out.println("将数据存取到redis中");
        }catch (Exception e){
            e.printStackTrace();
        }
        return proList;

    }
}
