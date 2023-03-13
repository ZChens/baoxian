package com.baoxian.dao;

import com.baoxian.pojo.Salesman;

public interface SalesmanMapper {

    //业务员登录
    Salesman SalesmanLogin(Salesman record);

    //根据姓名查询业务员，用于业务员个人信息功能
    Salesman SelectBySalesmanName(String salesmanname);

    //删除用户和用户注销账号
    int DeleteSalesmanById(Integer salesmanid);
}
