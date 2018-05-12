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
 * ��ѯ������Ʒ������
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
        //��ȥ�����в�ѯ���ݣ������ֱ�ӷ��أ�
        try{
            String category = jedisClient.get("categoryList");
            //�����Ϊ�գ�˵��ȡ��ֵ�� ������json��ʽ
            if(StrKit.notBlank(category)){
                List<TabCategoryCustem> categoryList = JsonUtils.jsonToList(category, TabCategoryCustem.class);
                return  categoryList;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        //���û��ȥ���ݿ��ѯ����
        List<TabCategoryCustem> categoryList =categoryMapper.listCategory();
        //����Ļ� �Ͱ������ѯ��������д��redis��
        try {
            jedisClient.set("categoryList",  JsonUtils.objectToJson(categoryList));
            System.out.println("�����ݴ�ȡ��redis��");
        }catch (Exception e){
            e.printStackTrace();
        }
        return categoryList;

    }

    @Override
    public List<Product> listProduct() {
        //��ȥ�����в�ѯ���ݣ������ֱ�ӷ��أ�
        try{
            String pro = jedisClient.get("proList");
            //�����Ϊ�գ�˵��ȡ��ֵ�� ������json��ʽ
            if(StrKit.notBlank(pro)){
                List<Product> proList = JsonUtils.jsonToList(pro, Product.class);
                return  proList;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        //���û��ȥ���ݿ��ѯ����
        List<Product> proList =categoryMapper.listProduct();
        //����Ļ� �Ͱ������ѯ��������д��redis��
        try {
            jedisClient.set("proList",  JsonUtils.objectToJson(proList));
            System.out.println("�����ݴ�ȡ��redis��");
        }catch (Exception e){
            e.printStackTrace();
        }
        return proList;

    }
}
