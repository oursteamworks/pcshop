package com.eb.pcshop.manager.dao;


import java.util.List;

import com.eb.pcshop.manager.pojo.po.TabNews;
import com.eb.pcshop.manager.pojo.po.TabNewsExample;
import org.apache.ibatis.annotations.Param;

public interface TabNewsMapper {
    int countByExample(TabNewsExample example);

    int deleteByExample(TabNewsExample example);

    int deleteByPrimaryKey(Integer nid);

    int insert(TabNews record);

    int insertSelective(TabNews record);

    List<TabNews> selectByExample(TabNewsExample example);

    TabNews selectByPrimaryKey(Integer nid);

    int updateByExampleSelective(@Param("record") TabNews record, @Param("example") TabNewsExample example);

    int updateByExample(@Param("record") TabNews record, @Param("example") TabNewsExample example);

    int updateByPrimaryKeySelective(TabNews record);

    int updateByPrimaryKey(TabNews record);
}