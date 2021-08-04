package com.research.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.research.myapp.dao.ResearchDAO;
import com.research.myapp.vo.ResearchVO;


@Service
public class ResearchServiceImp implements ResearchService {
	@Inject
	ResearchDAO dao;
	
	@Override
	public int researchInsert(ResearchVO vo) {
		// 설문조사 insert
		return dao.researchInsert(vo);
	}

	@Override
	public int researchQInsert(ResearchVO vo) {
		// 설문조사 문제 insert
		return dao.researchQInsert(vo);
	}

	@Override
	public int researchInfoInsert(ResearchVO vo) {
		// 설문조사 문항 insert
		return dao.researchInfoInsert(vo);
	}

	@Override
	public List<ResearchVO> getList() {
		// 목록 가져오기
		return dao.getList();
	}

	@Override
	public ResearchVO getRecord(int sur_seq) {
		// 설문조사 view
		return dao.getRecord(sur_seq);
	}

	@Override
	public List<ResearchVO> getQuestions(int sur_seq) {
		// 설문조사 문항 가져오기
		return dao.getQuestions(sur_seq);
	}

	@Override
	public int responseInsert(ResearchVO vo) {
		// 답변 등록
		return dao.responseInsert(vo);
	}
}
