package com.research.myapp.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.research.myapp.vo.ResearchVO;

@Controller
public class ResearchController {
	
//	@Inject
//	ResearchService rService;
	
	@RequestMapping("/researchList")
	public ModelAndView researchList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/research/researchList");
		return mav;
	}
	
	@RequestMapping("/researchCreate")
	public String researchCreate() {
		return "/research/researchCreate";
	}
	
	//설문조사 등록
	@RequestMapping("/researchCreateOk")
	public ModelAndView researchCreateOk(ResearchVO vo) {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping("/researchView")
	public ModelAndView researchView() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/research/researchView");
		return mav;
	}
}
