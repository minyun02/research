package com.research.myapp.dao;

import java.util.List;

import com.research.myapp.vo.PagingVO;
import com.research.myapp.vo.ResearchVO;

public interface ResearchDAO {
	public int researchInsert(ResearchVO vo);
	public int researchQInsert(ResearchVO vo);
	public int researchInfoInsert(ResearchVO vo);
	public List<ResearchVO> getList(PagingVO pvo);
	public ResearchVO getRecord(int sur_seq);
	public List<ResearchVO> getQuestions(int sur_seq);
	public int responseInsert(ResearchVO vo);
	public List<ResearchVO> getSurqTitleQues(int sur_seq);
	public List<ResearchVO> getTitleAndQs(int sur_seq);
	public int getQuesCount(int num, int sur_seq);
	public int getTotalCount(int surq_seq);
	public int getTotalRecord(PagingVO pvo);
	public int delRSR(int sur_seq);
	public int detRSI(int sur_seq);
	public int delRSQ(int sur_seq);
	public int delRS(int sur_seq);
	public int checkUserid(String user_id);
	public int checkPassword(String user_id, String password);
}
