package com.eb.pcshop.manager.admininterface;

import com.eb.pcshop.manager.pojo.po.AdminMan;
import com.eb.pcshop.manager.pojo.po.User;
import com.eb.pcshop.manager.pojo.dto.Page;
import com.eb.pcshop.manager.pojo.vo.UserQuery;

import java.util.List;

/**
 * Created by xhj on 2018/4/16.
 */
public interface AdminService {
    //用户登录验证
    AdminMan selectAdmin(AdminMan adm);

    //修改用户信息
    int editAdmin(AdminMan a);

//    满足搜索条件的用户数
    long countUser(UserQuery query);

//    搜索满足条件的用户数据
    List<User> listUserByPage(Page page, UserQuery query);

//    查看更改后的管理员数据
    AdminMan findAdmin();

    //更改用户的账户状态
    Integer updatePflagByUid(Integer uid);

    //根据UID更改用户的vip属性
    Integer updateVipByUid(Integer uid);

    //删除用户
    Integer removeUser(Integer uid);

    //批量删除
    Integer removeBatchUser(List<Integer> list);

    //根据UID查询用户信息
    User selectUserByUid(Integer uid);

    //添加用户
    Integer addUser(User user);

    //编辑用户
    Integer editUser(User user);
}
