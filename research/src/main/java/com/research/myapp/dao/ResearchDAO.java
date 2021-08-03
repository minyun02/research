package com.research.myapp.dao;

import java.util.List;

import com.research.myapp.vo.ResearchVO;

public interface ResearchDAO {
	public int researchInsert(ResearchVO vo);
	public int researchQInsert(ResearchVO vo);
	public int researchInfoInsert(ResearchVO vo);
	public List<ResearchVO> getList();
}
