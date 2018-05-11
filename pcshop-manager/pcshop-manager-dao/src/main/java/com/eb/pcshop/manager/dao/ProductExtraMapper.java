package com.eb.pcshop.manager.dao;

import com.eb.pcshop.manager.pojo.dto.PageDto;
import com.eb.pcshop.manager.pojo.po.Product;
import com.eb.pcshop.manager.pojo.po.ProductCustom;
import com.eb.pcshop.manager.pojo.vo.ProductIndex;
import com.eb.pcshop.manager.pojo.vo.ProductVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/17.
 */
public interface ProductExtraMapper extends  ProductMapper {
    List<ProductCustom> listProductByPage(@Param("pageDto") PageDto pageDto, @Param("productVO") ProductVO productVO);

    Long countProduct(@Param("productVO") ProductVO productVO);

    int updatePutaway(@Param("product") Product product);

    Product getProductByPid(@Param("pid") String pid);

    int removeOne(@Param("pid") String pid);

    int insertProduct(@Param("product") Product product);

    int addPimage(@Param("pid")String pid,@Param("pimage") String pimage);

    List<ProductIndex> importIndex();

    Product getProductPid();
}
