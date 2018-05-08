package com.eb.pcshop.manager.dao;

import com.eb.pcshop.manager.pojo.po.TabOrder;
import com.eb.pcshop.manager.pojo.po.TabOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TabOrderMapper {
    int countByExample(TabOrderExample example);

    int deleteByExample(TabOrderExample example);

    int deleteByPrimaryKey(String oid);

    int insert(TabOrder record);

    int insertSelective(TabOrder record);

    List<TabOrder> selectByExample(TabOrderExample example);

    TabOrder selectByPrimaryKey(String oid);

    int updateByExampleSelective(@Param("record") TabOrder record, @Param("example") TabOrderExample example);

    int updateByExample(@Param("record") TabOrder record, @Param("example") TabOrderExample example);

    int updateByPrimaryKeySelective(TabOrder record);

    int updateByPrimaryKey(TabOrder record);
}