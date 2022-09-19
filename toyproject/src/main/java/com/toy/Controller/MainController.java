package com.toy.Controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.toy.Service.userService;

@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView MainGetView(@RequestParam Map<String, Object> map) {
		
		System.out.println("--------- main view ----------");
		ModelAndView mav= new ModelAndView();
		
		/*
		 * HttpSession session = hsession.getSession();
		 * session.setAttribute("user_data", map); System.out.println("session ==== " +
		 * ((Map<String, Object>) session.getAttribute("user_data")).get("ui_id"));
		 */
		
		
		mav.setViewName("/main");
		long a = System.currentTimeMillis();
		
		System.out.println(a);
		
		return mav;
	}
 
}
