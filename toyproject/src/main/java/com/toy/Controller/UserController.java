package com.toy.Controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.toy.Service.userService;

@Controller
public class UserController {
	@Autowired
	userService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String LoginGetView() {
		
		return "/user/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String LoginChek(@RequestParam Map<String, Object> map, HttpServletRequest hsession) {
		
		System.out.println("------------------- login -------------");
		Map<String, Object> Login = service.userLogin(map);
		
		System.out.println("Login ====== " +Login);
		
		HttpSession session = hsession.getSession();
		session.setAttribute("user_data", map);
		System.out.println("session ==== " + ((Map<String, Object>) session.getAttribute("user_data")).get("ui_id"));
		
		String result ;
		
		if(Login != null) {
			System.out.println("------------------- login -------------");
			result = "redirect:/";
		} else {
			System.out.println("------------------- login -------------");
			result = "redirect:/login";
		}
		
		return result;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
 
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String JoinGetView() {
		return "/user/join";
	}
	
}
