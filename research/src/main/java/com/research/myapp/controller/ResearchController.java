package com.research.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		mav.addObject("list", rService.getList());
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
			vo.setWriter("admin");
			vo.setReg_name("admin");
			vo.setUdt_name("admin");
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
						mav.setViewName("redirect:researchCreate");
						tm.rollback(status);
					}
				}//for
				if(result3 > 0) {
					mav.setViewName("redirect:researchList");
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
	public ModelAndView researchView(int sur_seq) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", rService.getRecord(sur_seq));
		mav.addObject("qs", rService.getQuestions(sur_seq));
		mav.setViewName("/research/researchView");
		return mav;
	}
	
	//답변 등록
	@RequestMapping(value="/researchResponse", method = RequestMethod.POST)
	public ModelAndView researchResponse(ResearchVO vo) {
		ModelAndView mav = new ModelAndView();
		
		int size = vo.getVoList().size();
		int result = 0;
		for(int i=0; i<size; i++) {
			vo.getVoList().get(i).setReg_name("USER"+i);
			result = rService.responseInsert(vo.getVoList().get(i));
		}
		if(result>0) {
			mav.addObject("flag", true);
			mav.addObject("sur_seq", vo.getVoList().get(0).getSur_seq());
			mav.setViewName("redirect:researchView");
		}else {
			mav.addObject("flag", false);
			mav.addObject("sur_seq", vo.getVoList().get(0).getSur_seq());
			mav.setViewName("/research/researchView");
		}
		return mav;
	}
	
	//결과보기 
	@RequestMapping("/researchPopup")
	public ModelAndView researchPopup(int sur_seq) {
		ModelAndView mav = new ModelAndView();
		// surq_seq + 제목 + 문항 가져오기
		List<ResearchVO> list = new ArrayList<ResearchVO>();
		list.addAll(rService.getTitleAndQs(sur_seq));
//		System.out.println(list.get(0).getSurq_title()+"!@#!#!#!@#@!#@!");
		HashMap<Integer, List<Integer>> map = new HashMap<Integer, List<Integer>>();
		int count = 0;
		double percent = 0;
		for(int i=0;i<list.size();i++) {
			List<Integer> num = new ArrayList<Integer>();
			int totalCount = rService.getTotalCount(list.get(i).getSurq_seq()); // 해당 문항번호의 총 답변 수
			//첫번째 문항 카운트 가져오기
			for(int j=1; j<=5; j++) {
				count = rService.getQuesCount(j, list.get(i).getSurq_seq());
				percent = (double)((double)count / (double)totalCount) * 100;
				
				switch(j) {
				case 1:
					list.get(i).setCnt1(count);
					list.get(i).setPercent1((int)percent);
					break;
				case 2:
					list.get(i).setCnt2(count);
					list.get(i).setPercent2((int)percent);
					break;
				case 3:
					list.get(i).setCnt3(count);
					list.get(i).setPercent3((int)percent);
					break;
				case 4:
					list.get(i).setCnt4(count);
					list.get(i).setPercent4((int)percent);
					break;
				case 5:
					list.get(i).setCnt5(count);
					list.get(i).setPercent5((int)percent);
					break;
				}
			}
		}
		mav.addObject("list", list);
		mav.setViewName("/research/researchPopup");
		return mav;
	}
	
	//사유전체보기
	@RequestMapping("/reasonPopup")
	public ModelAndView reasonPopup(int sur_seq) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/research/researchChoiceReasonPopup");
		return mav;
	}
	
	//수정
	@RequestMapping("/researchEdit")
	public ModelAndView researchEdit(int sur_seq) {
		ModelAndView mav = new ModelAndView();
		System.out.println(sur_seq);
		mav.addObject("vo", rService.getRecord(sur_seq));
		mav.addObject("qs", rService.getQuestions(sur_seq));
		mav.setViewName("/research/researchEdit");
		return mav;
	}
	//설문조사 업데이트
	//삭제
	@RequestMapping("/researchDel")
	public ModelAndView researchDel(int sur_seq) {
		ModelAndView mav = new ModelAndView();
		System.out.println(sur_seq);
		mav.setViewName("/research/researchList");
		return mav;
	}
}
