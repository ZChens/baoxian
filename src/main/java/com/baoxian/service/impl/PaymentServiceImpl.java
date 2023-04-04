package com.baoxian.service.impl;

import com.baoxian.dao.PaymentMapper;
import com.baoxian.pojo.Insureinf;
import com.baoxian.pojo.Payment;
import com.baoxian.service.PaymentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Autowired
    private PaymentMapper paymentMapper;


    @Override
    public Integer AddPayment(Payment payment) {
        return paymentMapper.AddPayment(payment);
    }

    @Override
    public HashMap<String, Object> AllPaymentList(Payment payment, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Payment> list = paymentMapper.AllPaymentList(payment);
        PageInfo<Payment> info = new PageInfo<>(list);
        HashMap<String,Object> map = new HashMap<>();
        map.put("data",info.getList());//返回指定页面数据
        map.put("nowPage",pageNum);//返回当前页面
        map.put("total",((int)info.getTotal()+pageSize-1)/pageSize);//返回总页面数
        return map;
    }

    @Override
    public Integer UpdatePstate(Payment payid) {
        return paymentMapper.UpdatePstate(payid);
    }
}
