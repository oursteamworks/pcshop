package com.eb.pcshop.manager.dao;


import java.util.List;

import com.eb.pcshop.manager.pojo.po.TabProduct;
import com.eb.pcshop.manager.pojo.po.TabProductExample;
import org.apache.ibatis.annotations.Param;

public interface TabProductMapper {
    int countByExample(TabProductExample example);

    int deleteByExample(TabProductExample example);

    int deleteByPrimaryKey(Integer pid);

    int insert(TabProduct record);

    int insertSelective(TabProduct record);

    List<TabProduct> selectByExample(TabProductExample example);

    TabProduct selectByPrimaryKey(Integer pid);

    int updateByExampleSelective(@Param("record") TabProduct record, @Param("example") TabProductExample example);

    int updateByExample(@Param("record") TabProduct record, @Param("example") TabProductExample example);

    int updateByPrimaryKeySelective(TabProduct record);

    int updateByPrimaryKey(TabProduct record);
}