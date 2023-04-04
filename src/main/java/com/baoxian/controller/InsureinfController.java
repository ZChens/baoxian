package com.baoxian.controller;

import com.baoxian.pojo.Insuranceinf;
import com.baoxian.pojo.Insureinf;
import com.baoxian.service.InsureinfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;

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


    //查询所有订单，用于业务员和管理员
    @RequestMapping("AllInsureinfList")
    public String AllInsureinfList(Model model,
                                   @RequestParam(defaultValue = "1") Integer pageNum,
                                   @RequestParam(defaultValue = "3") Integer pageSize,
                                   @RequestParam(required = false) String username,
                                   @RequestParam(required = false) String insurancename){
        Insureinf insureinf = null;
        if(username!=null||insurancename!=null){
            insureinf = new Insureinf();
            insureinf.setUsername(username);
            insureinf.setInsurancename(insurancename);
        }
        HashMap<String,Object> map = insureinfService.AllInsureinfList(insureinf,pageNum,pageSize);
        model.addAttribute("list",map.get("data"));
        model.addAttribute("nowPage",map.get("nowPage"));
        model.addAttribute("total",map.get("total"));
        model.addAttribute("username",username);
        model.addAttribute("insurancename",insurancename);
        return "insureinf/AllInsureinfList";
    }


    //根据用户查询订单，用于客户查看个人订单
    @RequestMapping("SelectInsureById")
    public String SelectInsureById(Model model,
                                   @RequestParam(defaultValue = "1") Integer pageNum,
                                   @RequestParam(defaultValue = "3") Integer pageSize,
                                   @RequestParam String userid){
        Insureinf insureinf = null;
        if(userid!=null){
            insureinf = new Insureinf();
            insureinf.setUserid(userid);
        }
        HashMap<String,Object> map = insureinfService.SelectInsureById(insureinf,pageNum,pageSize);
        model.addAttribute("Ilist",map.get("data"));
        model.addAttribute("nowPage",map.get("nowPage"));
        model.addAttribute("total",map.get("total"));
        model.addAttribute("userid",userid);
        return "insureinf/SelectInsureById";
    }
}
