package com.baoxian.dao;

import com.baoxian.pojo.Payment;

import java.util.List;

public interface PaymentMapper {

    //添加赔付订单，用于用户赔付
    Integer AddPayment(Payment payment);

    //查看所有索赔，用于管理员
    List<Payment> AllPaymentList(Payment payment);

    //更改赔付状态，用于管理员
    Integer UpdatePstate(Payment payid);
}
