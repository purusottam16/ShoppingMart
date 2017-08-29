package com.shoppingmart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmart.model.UserInfo;

@Controller
public class LogInController {
	static final Logger logger = LoggerFactory.getLogger(LogInController.class);
	//@RequestMapping(value="/login",method =RequestMethod.GET)
	public ModelAndView login(@RequestParam( value="error", required=false ) String error){
		ModelAndView view =new ModelAndView();
		UserInfo info=new UserInfo();
		view.addObject("Login", info);
		if(error !=null){
			view.addObject("error", "UserName or Password is incorrect");
		}
		view.setViewName("login/login");
		return view;
		
	}
	
	
	@RequestMapping(value={"/","/home"} , method =RequestMethod.GET)
	public ModelAndView home(){
		ModelAndView view =new ModelAndView();
		
		view.setViewName("home/home");
		return view;
		
	}
	//@RequestMapping(value={"/logout"} , method =RequestMethod.GET)
	public String logOut(HttpServletRequest request, HttpServletResponse response){
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		if(authentication !=null){
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
		
		
		return "redirect:/login?logout";
		
	}
}
