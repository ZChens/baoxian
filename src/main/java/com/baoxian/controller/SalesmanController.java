package com.baoxian.controller;


import com.baoxian.pojo.Salesman;
import com.baoxian.service.SalesmanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
}
