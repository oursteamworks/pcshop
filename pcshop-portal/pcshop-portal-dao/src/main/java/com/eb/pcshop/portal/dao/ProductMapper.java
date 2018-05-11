package com.eb.pcshop.portal.dao;

import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.po.ProductIndex;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/5/3.
 */
public interface ProductMapper {
    List<Product> showProducts(@Param("keyword") String keyword);

    ProductIndex getProductById(int pid);
}
