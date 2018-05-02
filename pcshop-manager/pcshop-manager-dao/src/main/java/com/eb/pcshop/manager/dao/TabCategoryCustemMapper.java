package com.eb.pcshop.manager.dao;

import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.TabCategory;
import com.eb.pcshop.manager.pojo.po.TabCategoryCustem;
import com.eb.pcshop.manager.pojo.vo.TabCategoryQuery;
import com.eb.pcshop.manager.pojo.vo.UpdateAnameQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
public interface TabCategoryCustemMapper {

    long countCategorys(@Param("query") TabCategoryQuery query);

    List<TabCategory> listCategorysByPage(@Param("page") Page page, @Param("query") TabCategoryQuery query);

    TabCategory getCategoryByCname(@Param("cname") String cname);

    int addCategory(TabCategory tabCategory);

    int deleteCategoryByCid(String cid);

    TabCategoryCustem getCategoryByCid(String cid);

    List<UpdateAnameQuery> listAdmName();

    int editCategory(TabCategory tabCategory);

    int editCstatusByCid(@Param("cid") String cid, @Param("cstatus") String cstatus);
}
