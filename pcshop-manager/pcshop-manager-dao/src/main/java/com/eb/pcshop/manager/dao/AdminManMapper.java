package com.eb.pcshop.manager.dao;

import com.eb.pcshop.manager.pojo.po.AdminMan;
import com.eb.pcshop.manager.pojo.po.AdminManExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminManMapper {
    int countByExample(AdminManExample example);

    int deleteByExample(AdminManExample example);

    int deleteByPrimaryKey(Integer aid);

    int insert(AdminMan record);

    int insertSelective(AdminMan record);

    List<AdminMan> selectByExampleWithBLOBs(AdminManExample example);

    List<AdminMan> selectByExample(AdminManExample example);

    AdminMan selectByPrimaryKey(Integer aid);

    int updateByExampleSelective(@Param("record") AdminMan record, @Param("example") AdminManExample example);

    int updateByExampleWithBLOBs(@Param("record") AdminMan record, @Param("example") AdminManExample example);

    int updateByExample(@Param("record") AdminMan record, @Param("example") AdminManExample example);

    int updateByPrimaryKeySelective(AdminMan record);

    int updateByPrimaryKeyWithBLOBs(AdminMan record);

    int updateByPrimaryKey(AdminMan record);
}