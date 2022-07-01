package com.uca.spring.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class ScreenController {

    @RequestMapping(value = {"/index"}, method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView model = new ModelAndView();          
        model.setViewName("index.jsp");
        return model;

    }
    
    @RequestMapping(value = {"/doctor_login"}, method = RequestMethod.GET)
    public ModelAndView LoginDoctor(HttpServletRequest request) {
        ModelAndView model = new ModelAndView();          
        model.setViewName("/Logins/doctor_login.jsp");
        return model;

    }

   @RequestMapping("/user_login")
    public ModelAndView LoginUser(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();
        model.setViewName("/Logins/user_login.jsp");
        return model;

    }
   
  
   
   @RequestMapping("/AdminPersonal")
   public ModelAndView AdminPersonalIndex(HttpServletRequest request){
       ModelAndView model = new ModelAndView();
       model.setViewName("/Screens/Admin_Personal.jsp");
       return model;

   }   
   

   
   @RequestMapping("/EmailRecover")
   public ModelAndView EmailRecoverIndex(HttpServletRequest request){
       ModelAndView model = new ModelAndView();
       model.setViewName("/PasswordRecover/EmailRecover.jsp");
       return model;

   }
   
   @RequestMapping("/UserRegister")
   public ModelAndView UserRegister(HttpServletRequest request){
       ModelAndView model = new ModelAndView();
       model.setViewName("/Register/user_register.jsp");
       return model;

   }
   
   @RequestMapping("/UserRegister2")
   public ModelAndView UserRegister2(HttpServletRequest request){
       ModelAndView model = new ModelAndView();
       model.setViewName("/Register/user_register2.jsp");
       return model;

   }
   
   
   @RequestMapping("/PasswordRecover")
   public ModelAndView PasswordRecoverIndex(HttpServletRequest request){
       ModelAndView model = new ModelAndView();
       model.setViewName("/PasswordRecover/PasswordRecover.jsp");
       return model;

   }
    
   @RequestMapping("/")
   public ModelAndView login(
           @RequestParam(value = "error", required = false) String error,
           @RequestParam(value = "logout", required = false) String logout) {
       ModelAndView model = new ModelAndView();
       model.setViewName("/Logins/user_login.jsp");
       return model;

   }
  

   



}

