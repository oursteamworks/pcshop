package com.eb.pcshop.manager.service.impl;

import com.eb.pcshop.manager.admininterface.CategoryService;
import com.eb.pcshop.manager.dao.TabCategoryCustemMapper;
import com.eb.pcshop.manager.dao.TabCategoryMapper;
import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.po.TabCategory;
import com.eb.pcshop.manager.pojo.po.TabCategoryCustem;
import com.eb.pcshop.manager.pojo.po.TabCategoryExample;
import com.eb.pcshop.manager.pojo.vo.TabCategoryQuery;
import com.eb.pcshop.manager.pojo.vo.UpdateAnameQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
@Service
public class CategoryServiceImpl implements CategoryService {
    //自己定义的mapper
    @Autowired
    private TabCategoryCustemMapper tabCategoryCustemMapper;
    //逆向工程生成的mapper
    @Autowired
    private TabCategoryMapper tabCategoryMapper;

    /**
     * 查询商品分类总数
     * @return  返回总数
     */
    @Override
    public long countCategorys(TabCategoryQuery query) {
        long count = 0L;
        try {
            count = tabCategoryCustemMapper.countCategorys(query);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  count;
    }

    /**
     * 分页查询商品分类
     * @param page 分页所需数据(当前页,每页显示数据)
     * @return 分页数据
     */
    @Override
    public List<TabCategory> listCategorysByPage(Page page,TabCategoryQuery query) {
        List<TabCategory> tabCategoryList = null;
        try {
            tabCategoryList=tabCategoryCustemMapper.listCategorysByPage(page,query);
        }catch (Exception e){
            e.printStackTrace();
        }
        return tabCategoryList;
    }

    /**
     * 批量删除
     * @param ids 需要批量删除的cid集合
     * @return 受影响的行数
     */
    @Override
    public int updateCstatusByIds(List<Integer> ids) {
        int i = 0;
        try{
            TabCategory record = new TabCategory();
            record.setCstatus(3);
            TabCategoryExample example = new TabCategoryExample();
            TabCategoryExample.Criteria criteria = example.createCriteria();
            criteria.andCidIn(ids);
            i = tabCategoryMapper.updateByExampleSelective(record,example);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public TabCategory getCategoryByCname(String cname) {
        TabCategory tabCategory = null;
        try {
            tabCategory=tabCategoryCustemMapper.getCategoryByCname(cname);
        }catch (Exception e){
            e.printStackTrace();
        }
        return tabCategory;
    }

    @Override
    public int addCategory(TabCategory tabCategory) {
        int a =0;
        TabCategory cat = null;
        String cname = tabCategory.getCname();
        try {
            cat = tabCategoryCustemMapper.getCategoryByCname2(cname);
            if (cat==null){
                a = tabCategoryCustemMapper.addCategory(tabCategory);
            }else{
                a=tabCategoryCustemMapper.editCstatusByCname(cname);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return a;
    }

    @Override
    public int deleteCategoryByCid(String cid) {
        int a = 0;
        try {
            a = tabCategoryCustemMapper.deleteCategoryByCid(cid);
        }catch (Exception e){
            e.printStackTrace();
        }
        return a;
    }

    @Override
    public TabCategoryCustem getCategotyByCid(String cid) {
        TabCategoryCustem tabCategoryCustem = null;
        try {
            tabCategoryCustem= tabCategoryCustemMapper.getCategoryByCid(cid);
        }catch (Exception e){
            e.printStackTrace();
        }
        return tabCategoryCustem;
    }

    @Override
    public List<UpdateAnameQuery> listAdmName() {
        List<UpdateAnameQuery> admNameList = new ArrayList<>();
        try {
            admNameList= tabCategoryCustemMapper.listAdmName();
        }catch (Exception e){
            e.printStackTrace();
        }
        return admNameList;
    }

    @Override
    public boolean editCategory(TabCategory tabCategory) {
        boolean flg = false;
        try {
            int a = tabCategoryCustemMapper.editCategory(tabCategory);
            if(a!=0){
                flg=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flg;
    }

    @Override
    public boolean editCstatusByCid(String cid, String cstatus) {
        boolean flg = false;
        try {
            int a =tabCategoryCustemMapper.editCstatusByCid(cid,cstatus);
            if(a!=0){
                flg=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return flg;
    }

}
