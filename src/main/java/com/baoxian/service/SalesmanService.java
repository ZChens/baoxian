package com.baoxian.service;

import com.baoxian.pojo.Salesman;

import java.util.HashMap;

public interface SalesmanService {

    //业务员登录
    Salesman SalesmanLogin(Salesman record);

    //根据姓名查询业务员，用于业务员个人信息功能
    Salesman SelectBySalesmanName(String salesmanname);

    //删除用户和用户注销账号
    int DeleteSalesmanById(Integer salesmanid);
    //业务员列表
    HashMap<String,Object> AllSalesmanList(Salesman salesman,Integer pageNum, Integer pageSize);
}
