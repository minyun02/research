package com.research.myapp.service;

import com.research.myapp.vo.ResearchVO;

public interface ResearchService {
	public int researchInsert(ResearchVO vo);
	public int researchQInsert(ResearchVO vo);
	public int researchInfoInsert(ResearchVO vo);
}
