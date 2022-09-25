package com.toy.Controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.toy.Service.AjaxBoardService;

@Controller
public class AjaxBoardController {
	
	@Autowired
	AjaxBoardService service;
	
	@RequestMapping(value = "/ajaxBoard", method = RequestMethod.GET)
	public ModelAndView freeBoardView(@RequestParam Map<String, Object> map) {
		System.out.println(" AjaxBoard View GET Start----------------------");
		ModelAndView mav = new ModelAndView();
		System.out.println(" AjaxBoard View GET End----------------------");
		
		mav.setViewName("/ajaxBoard/ajaxBoard");
		return mav;
	}
	@ResponseBody
	@RequestMapping(value = "/ajaxBoard", method = RequestMethod.POST)
	public ModelAndView freeBoardViews(@RequestParam Map<String, Object> map) {
		System.out.println(" AjaxBoard View POST Start----------------------");
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> List = this.service.AjaxBoardList(map);
		mav.addObject("list", List);
		
		System.out.println("Ajax Board Post ==============" + List);
		System.out.println(" AjaxBoard View POST End----------------------");

		return mav;
	}
	
	
	@RequestMapping(value = "/ajaxBoardInsert", method = RequestMethod.POST)
	public ModelAndView freeBoardInsert(@RequestParam Map<String, Object> map) {

		ModelAndView mav = new ModelAndView();
		System.out.println("insert????? ");
		mav.setViewName("/ajaxBoard/ajaxBoard");

		return mav;
	}
	
	
	
}
