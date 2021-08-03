package com.research.myapp.controller;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.research.myapp.service.ResearchService;
import com.research.myapp.vo.ResearchVO;

@Controller
public class ResearchController {
	
	@Inject
	ResearchService rService;
	
	@Autowired
	private DataSourceTransactionManager tm;
	
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
	@Transactional(rollbackFor = {Exception.class, RuntimeException.class})
	public ModelAndView researchCreateOk(ResearchVO vo) {
		//트랜잭션 객체 생성
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(DefaultTransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = tm.getTransaction(def);
		
		ModelAndView mav = new ModelAndView();
		try {
			int result3 = 0; //문항 등록 체크용
			//설문조사 등록
			vo.setWriter("관리자");
			vo.setReg_name("관리지");
			vo.setUdt_name("관리자");
			int result1 = rService.researchInsert(vo);
			if(result1>0) {
				//설문 문제 등록(여러개일 수 있으니까 반복문)
				for(int i=0; i<vo.getQue_cnt(); i++) {
					vo.getVoList().get(i).setSur_seq(vo.getSur_seq());
					vo.getVoList().get(i).setWriter(vo.getWriter());
					vo.getVoList().get(i).setReg_name(vo.getReg_name());
					vo.getVoList().get(i).setUdt_name(vo.getUdt_name());
					int result2 = rService.researchQInsert(vo.getVoList().get(i));
					if(result2>0) {
						//문제 내용 등록(
						result3 = rService.researchInfoInsert(vo.getVoList().get(i));
					}else { //설문 문제 등록 실패.
						System.out.println("설문조사 문제 등록 실패");
						mav.setViewName("redirect:/research/researchCreate");
						tm.rollback(status);
					}
				}//for
				if(result3 > 0) {
					mav.setViewName("/research/researchList");
					tm.commit(status);
				}else {
					mav.setViewName("redirect:/research/researchCreate");
					System.out.println("설문조사 문항 등록 실패");
					tm.rollback(status);
				}
			}else {
				System.out.println("설문조사 등록 실패");
				mav.setViewName("researchCreate");
				tm.rollback(status);
			}
		}catch(Exception e) {
			mav.setViewName("researchCreate");
			System.out.println("설문조사 등록 실패...롤백");
			e.printStackTrace();
		}
		return mav;
	}
	@RequestMapping("/researchView")
	public ModelAndView researchView() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/research/researchView");
		return mav;
	}
}
