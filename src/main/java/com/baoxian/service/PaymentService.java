package com.baoxian.service;

import com.baoxian.pojo.Payment;

import java.util.HashMap;
import java.util.List;

public interface PaymentService {
    //添加赔付订单，用于用户赔付
    Integer AddPayment(Payment payment);

    //查看所有索赔，用于管理员
    HashMap<String,Object> AllPaymentList(Payment payment, Integer pageNum, Integer pageSize);

    //更改赔付状态，用于管理员
    Integer UpdatePstate(Payment payid);
}
