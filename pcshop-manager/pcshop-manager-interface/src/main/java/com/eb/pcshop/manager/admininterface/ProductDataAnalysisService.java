package com.eb.pcshop.manager.admininterface;



import com.eb.pcshop.manager.pojo.dto.CategoryIsHotByAge;
import com.eb.pcshop.manager.pojo.dto.CategoryQuantity;
import com.eb.pcshop.manager.pojo.dto.VipAndTurnover;
import com.eb.pcshop.manager.pojo.po.TabCategory;
import com.eb.pcshop.manager.pojo.po.TabProduct;

import java.util.List;

/**
 * Created by Administrator on 2018/4/17.
 */
public interface ProductDataAnalysisService {
    /**
     * 获取的所有的商品的信息
     * @return List<TabProduct>
     */
    List<TabProduct> getProductData();

    /**
     * 实现商品销售排行榜
     * @return  List<TabProduct>
     */
    List<TabProduct> listProductCountSort();

    /**
     * 根据年龄范围分析这个年龄范围的用户喜欢购买哪类的商品
     * @param age_min 年龄下限
     * @param age_max 年龄上限
     * @return CategoryIsHotByAge
     */
    CategoryIsHotByAge getDataByAgeRange(Integer age_min, Integer age_max);

    /**
     * 获取所有的分类
     * @return List<TabCategory>
     */
    List<TabCategory> getAllCategory();

    /**
     * 获取这周内注册的会员人数和订单的成交量
     * @return VipAndTurnover 封装类注册的会员的人数和订单的成交量
     */
    VipAndTurnover getVipAndTurnover();

    /**
     *  实现后天管理系统首页图形,获取图形所需要的数据
     * @return CategoryQuantity
     */
    CategoryQuantity getGraphData();
}
