package com.research.myapp.service;

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
}
