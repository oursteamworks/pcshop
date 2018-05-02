package com.eb.pcshop.manager.admininterface;

import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.TabCategory;
import com.eb.pcshop.manager.pojo.po.TabCategoryCustem;
import com.eb.pcshop.manager.pojo.vo.TabCategoryQuery;
import com.eb.pcshop.manager.pojo.vo.UpdateAnameQuery;

import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
public interface CategoryService {
    long countCategorys(TabCategoryQuery query);

    List<TabCategory> listCategorysByPage(Page page, TabCategoryQuery query);

    int updateCstatusByIds(List<Integer> ids);

    TabCategory getCategoryByCname(String cname);

    int addCategory(TabCategory tabCategory);

    int deleteCategoryByCid(String cid);

    TabCategoryCustem getCategotyByCid(String cid);

    List<UpdateAnameQuery> listAdmName();

    boolean editCategory(TabCategory tabCategory);

    boolean editCstatusByCid(String cid, String cstatus);
}
