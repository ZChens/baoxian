package com.baoxian.controller;


import com.baoxian.pojo.Insuranceinf;
import com.baoxian.pojo.Salesman;
import com.baoxian.service.SalesmanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
@RequestMapping("/salesman")
public class SalesmanController {

    @Autowired
    private SalesmanService salesmanService;

    //转到业务员登陆页面
    @RequestMapping("gosalesmanlogin")
    public ModelAndView gosalesmanlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/salesman/SalesmanLogin");
        System.out.println(mv);
        return mv;

    }

    //业务员登陆
    @RequestMapping(value = "salesmanlogin", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView salesmanlogin(Salesman record, HttpSession session, Model model) {
        Salesman sm = salesmanService.SalesmanLogin(record);
        if (sm != null) {
            session.setAttribute("sm", sm);
            ModelAndView mv = new ModelAndView();
            mv.setViewName("/salesman/SalesmanWelcome");
            return mv;
        } else {
            return new ModelAndView(new RedirectView("/salsesman/111"));
        }
    }

    //业务员列表，分页查询部分以及搜索框
    @RequestMapping("/AllSalesmanList")
    public String AllSalesmanListModel (Model model,
                                        @RequestParam(defaultValue = "1") Integer pageNum,
                                        @RequestParam(defaultValue = "3") Integer pageSize,
                                        @RequestParam(required = false) String salesmanname,
                                        @RequestParam(required = false) String level){
        Salesman salesman = null;
        if(salesmanname!=null||level!=null){
            salesman = new Salesman();
            salesman.setSalesmanname(salesmanname);
            salesman.setLevel(level);
        }
            HashMap<String,Object> map = salesmanService.AllSalesmanList(salesman,pageNum,pageSize);
            model.addAttribute("list",map.get("data"));
            model.addAttribute("nowPage",map.get("nowPage"));
            model.addAttribute("total",map.get("total"));
            model.addAttribute("salesmanname",salesmanname);
            model.addAttribute("level",level);
        return "/salesman/AllSalesmanList";
    }

}
