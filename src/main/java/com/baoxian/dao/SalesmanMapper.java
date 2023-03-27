package com.baoxian.dao;

import com.baoxian.pojo.Salesman;

import java.util.List;

public interface SalesmanMapper {

    //业务员登录
    Salesman SalesmanLogin(Salesman record);

    //根据姓名查询业务员，用于业务员个人信息功能
    Salesman SelectBySalesmanName(String salesmanname);

    //删除注销账号
    int DeleteSalesmanById(Integer salesmanid);

    //业务员列表
    List<Salesman> AllSalesmanList(Salesman salesman);
}
