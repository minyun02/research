package com.research.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.research.myapp.service.ResearchService;

@Controller
public class LoginController {
	
	@Inject
	ResearchService rService;
	
	@RequestMapping("/login")
	public String login() {
		return "/login/login";
	}
	
	//userid 검사
	@RequestMapping("/useridCheck")
	@ResponseBody
	public boolean useridCheck(String user_id) {
		boolean flag = false;
		System.out.println(user_id);
		//아이디가 있으면 true
		int check = rService.checkUserid(user_id);
		if(check > 0) {
			flag = true;
		}
		return flag;
	}
	
	@RequestMapping("/loginPassword")
	public ModelAndView loginPassword(String user_id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("user_id", user_id);
		mav.setViewName("/login/password");
		return mav;
	}
	
	@RequestMapping("/passwordCheck")
	@ResponseBody
	public boolean passwordCheck(String user_id, String password, HttpSession ses) {
		boolean flag = false;
		//비밀번호가 맞으면 true
		System.out.println("------------------");
		System.out.println(user_id);
		System.out.println(password);
		int check = rService.checkPassword(user_id, password);
		if(check > 0) {
			flag = true;
			ses.setAttribute("userid", user_id);
			ses.setAttribute("password", password);
			ses.setAttribute("status", "Y");
			if(user_id.equals("yun")) {
				ses.setAttribute("admin", "Y");
			}
		}
		return flag;
	}
}
