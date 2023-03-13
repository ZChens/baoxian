package com.baoxian.dao;

import com.baoxian.pojo.Insureinf;

import java.util.List;
import java.util.Map;

public interface InsureinfMapper {

    //创建订单
    int AddInsureinf(Insureinf insureinf);
    //修改订单

    //取消订单


    //查询所有订单，用于业务员和管理员
    List<Insureinf> AllInsureinfList(Map<String,Object> map);

    //根据用户查询订单，用于客户查看个人订单

    //修改支付状态，用于用户支付订单

    //修改审核状态，用于管理员审核订单


}
