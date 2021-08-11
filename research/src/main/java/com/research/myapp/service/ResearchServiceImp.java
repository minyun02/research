package com.research.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.research.myapp.dao.ResearchDAO;
import com.research.myapp.vo.PagingVO;
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
	public List<ResearchVO> getList(PagingVO pvo) {
		// 목록 가져오기
		return dao.getList(pvo);
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

	@Override
	public List<ResearchVO> getTitleAndQs(int sur_seq) {
		// surq_seq + 제목 + 문항 가져오기
		return dao.getTitleAndQs(sur_seq);
	}

	@Override
	public int getQuesCount(int num, int sur_seq) {
		// 문항별 답변 수 가져오기
		return dao.getQuesCount(num, sur_seq);
	}

	@Override
	public int getTotalCount(int surq_seq) {
		// total 답변수
		return dao.getTotalCount(surq_seq);
	}

	@Override
	public int getTotalRecord(PagingVO pvo) {
		// 페이징용 total record
		return dao.getTotalRecord(pvo);
	}

	@Override
	public int delRSR(int sur_seq) {
		// 답변 삭제
		return dao.delRSR(sur_seq);
	}

	@Override
	public int detRSI(int sur_seq) {
		// rsi 삭제
		return dao.detRSI(sur_seq);
	}

	@Override
	public int delRSQ(int sur_seq) {
		// TODO Auto-generated method stub
		return dao.delRSQ(sur_seq);
	}

	@Override
	public int delRS(int sur_seq) {
		// TODO Auto-generated method stub
		return dao.delRS(sur_seq);
	}

	@Override
	public int checkUserid(String user_id) {
		// userid check
		return dao.checkUserid(user_id);
	}

	@Override
	public int checkPassword(String user_id, String password) {
		// password check
		return dao.checkPassword(user_id, password);
	}

}
