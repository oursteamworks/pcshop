package com.eb.pcshop.manager.admininterface;

import com.eb.pcshop.manager.pojo.dto.MessageObject;
import com.eb.pcshop.manager.pojo.dto.PageDto;
import com.eb.pcshop.manager.pojo.po.*;
import com.eb.pcshop.manager.pojo.vo.ProductVO;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/17.
 */
public interface ServiceInterface {

    /**
     * 分页显示
     * @param pageDto 传参条件
     * @param productVO
     * @return 分页用的商品集合对象
     */
    List<ProductCustom> listProductByPage(PageDto pageDto, ProductVO productVO);

    /**
     * 统计符合条件的商品总数
     * @return 商品总数
     * @param
     */
    Long countProduct(ProductVO productVO);

    /**
     *批量删除
     * @param list
     * @return 受影响的行数
     */
    int removeBatchProduct(List<Integer> list);

    /**
     * 更新上下架状态
     * @param pid
     * @return 受影响的行数
     */
    int updatePutaway(String pid);

    /**
     * 删除某个商品
     * @param pid
     * @return 受影响的行数
     */
    int removeOne(String pid);

    /**
     * 获取所有的分类名称
     * @return  分类名称的集合
     */
    List<Category> listCategory();

    /**
     * 添加商品
     * @param product
     * @return
     */
    int addProduct(Product product);

    /**
     * 根据pid获得某个商品
     * @param pid
     * @return
     */
    Product getProduct(String pid);

    int editProduct(Product product);

    int addPimage(String pid, String pimage);

    MessageObject importIndex();

    /**
     * 为了实现消息队列,需要将以添加的商品pid添加队列中
     * @return Product
     */
    Product getProductPid();
}
