package com.baoxian.controller;


import com.baoxian.pojo.Insureinf;
import com.baoxian.pojo.Payment;
import com.baoxian.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;

@Controller
@RequestMapping("/payment")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    //添加赔付订单，用于用户赔付
    @RequestMapping("AddPayment")
    public String AddPayment(Payment payment) {
        int x = paymentService.AddPayment(payment);
        if (x == 1) {
            return "payment/Addsuccess";
        }
        return "";
    }

    //查看所有索赔，用于管理员
    @RequestMapping("AllPaymentList")
    public String AllPaymentList(Model model,
                                 @RequestParam(defaultValue = "1") Integer pageNum,
                                 @RequestParam(defaultValue = "3") Integer pageSize,
                                 @RequestParam(required = false) String username) {
        Payment payment = null;
        if (username != null) {
            payment = new Payment();
            payment.setUsername(username);
        }
        HashMap<String, Object> map = paymentService.AllPaymentList(payment, pageNum, pageSize);
        model.addAttribute("list", map.get("data"));
        model.addAttribute("nowPage", map.get("nowPage"));
        model.addAttribute("total", map.get("total"));
        model.addAttribute("username", username);
        return "payment/AllPaymentList";
    }

    //更改赔付状态，用于管理员
    @RequestMapping("UpdatePstate")
    public String UpdatePstate(Payment payid){
        paymentService.UpdatePstate(payid);
        return "payment/Paysuccess";
    }

    //根据userid查询赔付订单，用于客户赔付
    @RequestMapping("SelectPayById")
    public String SelectPayById(Model model,
                                 @RequestParam(defaultValue = "1") Integer pageNum,
                                 @RequestParam(defaultValue = "3") Integer pageSize,
                                  String userid) {
        Payment payment = null;
        if (userid != null) {
            payment = new Payment();
            payment.setUserid(userid);
        }
        HashMap<String, Object> map = paymentService.AllPaymentList(payment, pageNum, pageSize);
        model.addAttribute("list", map.get("data"));
        model.addAttribute("nowPage", map.get("nowPage"));
        model.addAttribute("total", map.get("total"));
        model.addAttribute("userid", userid);
        return "payment/SelectPayById";
    }
}
