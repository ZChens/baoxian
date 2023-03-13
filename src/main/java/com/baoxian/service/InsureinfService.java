package com.baoxian.service;

import com.baoxian.pojo.Insureinf;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface InsureinfService {

    //创建订单
    int AddInsureinf(Insureinf insureinf);
    //修改订单

    //取消订单

    //查询所有订单，用于业务员和管理员
    HashMap<String,Object> AllInsureinfList(Insureinf insureinf, Integer pageNum, Integer pageSize);

    //根据用户查询订单，用于客户查看个人订单

}
