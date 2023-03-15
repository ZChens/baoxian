package com.baoxian.controller;


import com.baoxian.pojo.Insuranceinf;
import com.baoxian.service.InsuranceinfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/insuranceinf")
public class InsuranceinfController {


    @Autowired
    private InsuranceinfService insuranceinfService;


    //保险总列表分页查询，以及模糊查询搜索框
    @RequestMapping("/SelectInsuranceinfByAll")
    public String SelectInsuranceinfByAll(Model model,
                      @RequestParam(defaultValue = "1") Integer pageNum,
                      @RequestParam(defaultValue = "3") Integer pageSize,
                      @RequestParam(required = false) String insurancetype,
                      @RequestParam(required = false) String insurancename){
        Insuranceinf insuranceinf = null;
        if(insurancetype!=null||insurancename!=null){
            insuranceinf = new Insuranceinf();
            insuranceinf.setInsurancetype(insurancetype);
            insuranceinf.setInsurancename(insurancename);
        }
        HashMap<String,Object> map = insuranceinfService.SelectInsuranceinfByAll(insuranceinf,pageNum,pageSize);
        model.addAttribute("list",map.get("data"));
        model.addAttribute("nowPage",map.get("nowPage"));
        model.addAttribute("total",map.get("total"));
        model.addAttribute("insurancetype",insurancetype);
        model.addAttribute("insurancename",insurancename);
      return "insuranceinf/SelectInsuranceinfByAll";
    }

    //保险详情页面
    @RequestMapping("/SelectDetailById")
    public String SelectDetailById( Integer insuranceid, Model model){
        Insuranceinf insuranceinf = new Insuranceinf();
        insuranceinf.setInsuranceid(insuranceid);
        HashMap<String,Object> map = insuranceinfService.SelectInsuranceinfByAll(insuranceinf,1,1);
        List<Insuranceinf> list = (List<Insuranceinf>) map.get("data");
        if(list != null&&list.size()>0){
            model.addAttribute("insuranceinf",list.get(0));
        }
        return "insuranceinf/SelectDetailById";
    }
}
