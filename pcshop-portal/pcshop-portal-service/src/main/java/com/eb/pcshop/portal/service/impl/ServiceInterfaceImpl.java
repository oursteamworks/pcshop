package com.eb.pcshop.portal.service.impl;

import com.eb.pcshop.commons.jedis.JedisClient;
import com.eb.pcshop.commons.util.JsonUtils;
import com.eb.pcshop.commons.util.StrKit;
import com.eb.pcshop.portal.dao.PictureMapper;
import com.eb.pcshop.portal.service.ServiceInterface;
import com.eb.pcshop.portal.pojo.po.Picture;
import com.eb.pcshop.portal.pojo.po.PictureExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/25.
 */
@Service
public class ServiceInterfaceImpl implements ServiceInterface{

    @Autowired
    private PictureMapper pictureMapper;

    @Autowired
    private JedisClient jedisClient;

    @Override
    public List<Picture> listPictureByCid(Integer cid) {
        //第一步先去redis数据库读取  如果有的话 就直接返回 这样可以节约性能
        try {
            //从redis中获取图片
            String lunbo = jedisClient.hget("lunbo", cid + "");
            //如果不为空 就说明 从redis中得到了值  并且是json格式的数据了
            System.out.println(lunbo);
            if(StrKit.notBlank(lunbo)){
                List<Picture> pictureList = JsonUtils.jsonToList(lunbo,Picture.class);
                System.out.println("进入redis缓存读取数据");
                return  pictureList;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        //去数据库读取数据
        PictureExample example=new PictureExample();
        PictureExample.Criteria criteria=example.createCriteria();
        //把cid传给这个模板
        criteria.andCidEqualTo(cid);
        //通过模板的方法获取到符合条件的图片
        List<Picture> pictureList = pictureMapper.selectByExample(example);

        //否则的话 就把这个查询到的数据写到redis中
        try {
            jedisClient.hset("lunbo",cid+"",JsonUtils.objectToJson(pictureList));
            System.out.println("将数据存取到redis中");
        }catch (Exception e){
            e.printStackTrace();
        }
        return pictureList;
    }
}
