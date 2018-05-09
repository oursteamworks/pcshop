package com.eb.pcshop.portal.service;


import com.eb.pcshop.portal.pojo.po.Picture;
import com.eb.pcshop.portal.pojo.po.Product;
import com.eb.pcshop.portal.pojo.vo.TbSearchItemResult;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/25.
 */
public interface ServiceInterface {
    /**
     * 根据cid获取属于此类下的轮播图片
     * @param cid
     * @return
     */
    List<Picture> listPictureByCid(Integer cid);

    /**
     * 模糊查询
     * @param keyword
     * @return
     */
    List<Product> showProducts(String keyword);

    TbSearchItemResult searchIndex(String keyword, int pageIndex, int pageSize);
}
