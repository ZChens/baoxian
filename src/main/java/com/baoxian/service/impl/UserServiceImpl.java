package com.baoxian.service.impl;

import com.baoxian.dao.UserMapper;
import com.baoxian.pojo.Insuranceinf;
import com.baoxian.pojo.User;
import com.baoxian.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    //用户注册
    @Override
    public int AddUser(User record) {
        return userMapper.AddUser(record);
    }

    //用户登录
    @Override
    public User UserLogin(User record) {
        return userMapper.UserLogin(record);
    }

    //根据姓名查询用户，用于个人信息功能
    @Override
    public int SelectByUserId(Integer userid) {
        return userMapper.SelectByUserId(userid);
    }

    //删除用户和用户注销账号
    @Override
    public Integer DeleteUserById(Integer userid) {
        return userMapper.DeleteUserById(userid);
    }

    //查询所有用户，用于管理员的用户列表
    @Override
    public HashMap<String,Object> AllUserList(User user,Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> list = userMapper.AllUserList(user);
        PageInfo<User> info = new PageInfo<>(list);
        HashMap<String,Object> map = new HashMap<>();
        map.put("data",info.getList());//返回指定页面数据
        map.put("nowPage",pageNum);//返回当前页面
        map.put("total",((int)info.getTotal()+pageSize-1)/pageSize);//返回总页面数
        return map;
    }
}
