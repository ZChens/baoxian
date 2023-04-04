package com.baoxian.dao;

import com.baoxian.pojo.Insuranceinf;
import com.baoxian.pojo.Insureinf;

import java.util.List;
import java.util.Map;

public interface InsureinfMapper {

    //创建订单
    int AddInsureinf(Insureinf insureinf);
    //修改订单

    //取消订单


    //查询所有订单，用于业务员和管理员
    List<Insureinf> AllInsureinfList(Insureinf insureinf);

    //根据用户查询订单，用于客户查看个人订单
    List<Insureinf> SelectInsureById(Insureinf userid);

    //修改支付状态，用于用户支付订单
    Integer Updatepaystate(Insureinf insureinfid);



}
