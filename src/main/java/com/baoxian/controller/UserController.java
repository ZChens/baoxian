package com.baoxian.controller;


import com.baoxian.pojo.Salesman;
import com.baoxian.pojo.User;
import com.baoxian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    //转到注册页面
    @RequestMapping("/goadduser")
    public ModelAndView goadduser(){
        ModelAndView mv =new ModelAndView();
        mv.setViewName("/user/AddUser");
        return mv;
    }

    //注册
    @RequestMapping("/adduser")
    public String adduser(User record){
        int i =userService.AddUser(record);
        if(i==1){
            return "redirect:/user/gouserlogin.action";
        }else {
            return "";
        }
    }

    //用户转到登录页面
    @RequestMapping("/gouserlogin")
    public ModelAndView gouserlogin(){
        ModelAndView mv =new ModelAndView();
        mv.setViewName("/user/UserLogin");
        System.out.println(mv);
        return mv;

    }

    //用户登录
    @RequestMapping(value = "/userlogin",method= {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView userlogin(User record, HttpSession session, Model model) {
        User user = userService.UserLogin(record);
        if(user!=null){
            session.setAttribute("user",user);
            ModelAndView mv = new ModelAndView();
            mv.setViewName("/user/UserWelcome");
            return mv;
        }else{
            return new ModelAndView(new RedirectView("/user/111"));
        }
//        ModelAndView mv = new ModelAndView();
//        session.setAttribute("userkey", user);
//        mv.setViewName("/user/111");
//        return mv;
    }

    //用户退出
    @RequestMapping("/exit")
    public String exit(HttpSession session) {
        session.removeAttribute("userkey");
        session.invalidate(); //设置session 失效
        return "redirect:/index.jsp";
    }



    //转到main页面
    @RequestMapping("/gomain")
    public ModelAndView gomain(){
        ModelAndView mv =new ModelAndView();
        mv.setViewName("/homepage1");
        return mv;
    }


    //查询所有用户，用于管理员的用户列表
    @RequestMapping("/AllUserList")
    public String AllUserList(Model model,
                              @RequestParam(defaultValue = "1") Integer pageNum,
                              @RequestParam(defaultValue = "3") Integer pageSize,
                              @RequestParam(required = false) String username){
        User user = null;
        if(username!=null){
            user = new User();
            user.setUsername(username);
        }
        HashMap<String,Object> map = userService.AllUserList(user,pageNum,pageSize);
        model.addAttribute("list",map.get("data"));
        model.addAttribute("nowPage",map.get("nowPage"));
        model.addAttribute("total",map.get("total"));
        model.addAttribute("username",username);
        return "/user/AllUserList";
    }



}
