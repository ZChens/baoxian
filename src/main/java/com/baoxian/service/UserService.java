package com.baoxian.service;

import com.baoxian.pojo.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface UserService {

    //用户注册
    int AddUser(User record);

    //用户登录
    User UserLogin(User record);

    //根据姓名查询用户，用于个人信息功能
    int SelectByUserId(String userid);

    //删除用户和用户注销账号
    Integer DeleteUserById(String userid);

    //查询所有用户，用于管理员的用户列表
    HashMap<String,Object> AllUserList(User user,Integer pageNum, Integer pageSize);
}
