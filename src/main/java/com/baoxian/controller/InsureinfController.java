package com.baoxian.controller;

import com.baoxian.pojo.Insureinf;
import com.baoxian.service.InsureinfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/insureinf")
public class InsureinfController {

    @Autowired
    private InsureinfService insureinfService;


    //转到创建订单页面
    @RequestMapping("/goAddInsureinf")
    public ModelAndView goAddInsureinf(){
        ModelAndView mv =new ModelAndView();
        mv.setViewName("/insureinf/AddInsureinf");
        return mv;

    }

    //创建订单
    @RequestMapping("/AddInsureinf")
    public String AddInsureinf(Insureinf insureinf){
        int i = insureinfService.AddInsureinf(insureinf);
        if(i==1){
            return "redirect:/insureinf/111.jsp";//跳转到用户个人订单页面
        }else{
            return "";
        }
    }

}
