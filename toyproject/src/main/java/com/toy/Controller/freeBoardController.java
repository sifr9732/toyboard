package com.toy.Controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.toy.Service.freeBoardService;

@Controller
public class freeBoardController {

	@Autowired
	freeBoardService service;

	@RequestMapping(value = "/freeBoard", method = RequestMethod.GET)
	public ModelAndView freeBoardList(@RequestParam Map<String, Object> map) {

		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> List = this.service.freeBoard_List(map);

		System.out.println("List ============= " + List);
		mav.addObject("boardList", List);

		mav.setViewName("/board/freeBoard");

		return mav;
	}

	@RequestMapping(value = "/freeBoardView", method = RequestMethod.GET)
	public ModelAndView freeBoardView(@RequestParam Map<String, Object> map) {

		ModelAndView mav = new ModelAndView();

		Map<String, Object> List = this.service.freeBoard_View(map);
		System.out.println("List ============= " + List);
		mav.addObject("boardList", List);

		mav.setViewName("/board/freeBoardView");

		return mav;
	}
	
	@RequestMapping(value = "/freeBoardInsert", method = RequestMethod.GET)
	public ModelAndView freeBoardInsertGet() {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("================== insert GET =====================");
		mav.setViewName("/board/freeBoardInsert");
		
		return mav;
	}
	
	@RequestMapping(value = "/freeBoardInsert", method = RequestMethod.POST)
	public ModelAndView freeBoardInsertPost(@RequestParam Map<String, Object> map) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("================== insert POST =====================");
		
		boolean data = this.service.freeBoardInsert(map);
		mav.addObject("data", data);
		System.out.println("data ?? =========" + data);
		mav.setViewName("/board/freeBoard");
		
		return mav;
	}

}
