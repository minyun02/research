package com.research.myapp.vo;

import java.util.List;

public class ResearchVO {
	//설문조사 기본
	private int sur_seq; //설문번호
	private String sur_title; //제목
	private int que_cnt; //문제수
	private String sur_sat_date; //시작날짜
	private String sur_end_date; //종료날짜
	private int hits; //조회수
	
	//공통
	private String writer; //작성자
	private String reg_name; //등록자
	private String reg_date; //등록날짜
	private String udt_name; //수정자
	private String udt_date; //수정날짜
	
	///////////////////////설문 문제
	private int surq_seq; //문제번호
	private String surq_title; //문제
	
	//////////////////////////////설문 문제 상세
	private int suri_seq; //문항번호
	private String suri_title1; //문항내용1
	private String suri_title2;
	private String suri_title3;
	private String suri_title4;
	private String suri_title5;
	private String suri_reason;
	
	//////////////////////////////////////////설문조사 답변
	private int surr_seq;
	private int suri_num;
	private String description;
	
	private int cnt1;
	private int cnt2;
	private int cnt3;
	private int cnt4;
	private int cnt5;
	
	private int percent1;
	private int percent2;
	private int percent3;
	private int percent4;
	private int percent5;
	
	private List<ResearchVO> voList;
	
	public int getSur_seq() {
		return sur_seq;
	}
	public void setSur_seq(int sur_seq) {
		this.sur_seq = sur_seq;
	}
	public String getSur_title() {
		return sur_title;
	}
	public void setSur_title(String sur_title) {
		this.sur_title = sur_title;
	}
	public int getQue_cnt() {
		return que_cnt;
	}
	public void setQue_cnt(int que_cnt) {
		this.que_cnt = que_cnt;
	}
	public String getSur_sat_date() {
		return sur_sat_date;
	}
	public void setSur_sat_date(String sur_sat_date) {
		this.sur_sat_date = sur_sat_date;
	}
	public String getSur_end_date() {
		return sur_end_date;
	}
	public void setSur_end_date(String sur_end_date) {
		this.sur_end_date = sur_end_date;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getReg_name() {
		return reg_name;
	}
	public void setReg_name(String reg_name) {
		this.reg_name = reg_name;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getUdt_name() {
		return udt_name;
	}
	public void setUdt_name(String udt_name) {
		this.udt_name = udt_name;
	}
	public String getUdt_date() {
		return udt_date;
	}
	public void setUdt_date(String udt_date) {
		this.udt_date = udt_date;
	}
	public int getSurq_seq() {
		return surq_seq;
	}
	public void setSurq_seq(int surq_seq) {
		this.surq_seq = surq_seq;
	}
	public String getSurq_title() {
		return surq_title;
	}
	public void setSurq_title(String surq_title) {
		this.surq_title = surq_title;
	}
	public int getSuri_seq() {
		return suri_seq;
	}
	public void setSuri_seq(int suri_seq) {
		this.suri_seq = suri_seq;
	}
	public String getSuri_title1() {
		return suri_title1;
	}
	public void setSuri_title1(String suri_title1) {
		this.suri_title1 = suri_title1;
	}
	public String getSuri_title2() {
		return suri_title2;
	}
	public void setSuri_title2(String suri_title2) {
		this.suri_title2 = suri_title2;
	}
	public String getSuri_title3() {
		return suri_title3;
	}
	public void setSuri_title3(String suri_title3) {
		this.suri_title3 = suri_title3;
	}
	public String getSuri_title4() {
		return suri_title4;
	}
	public void setSuri_title4(String suri_title4) {
		this.suri_title4 = suri_title4;
	}
	public String getSuri_title5() {
		return suri_title5;
	}
	public void setSuri_title5(String suri_title5) {
		this.suri_title5 = suri_title5;
	}
	public String getSuri_reason() {
		return suri_reason;
	}
	public void setSuri_reason(String suri_reason) {
		this.suri_reason = suri_reason;
	}
	public List<ResearchVO> getVoList() {
		return voList;
	}
	public void setVoList(List<ResearchVO> voList) {
		this.voList = voList;
	}
	public int getSurr_seq() {
		return surr_seq;
	}
	public void setSurr_seq(int surr_seq) {
		this.surr_seq = surr_seq;
	}
	public int getSuri_num() {
		return suri_num;
	}
	public void setSuri_num(int suri_num) {
		this.suri_num = suri_num;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
	
	
	public int getCnt1() {
		return cnt1;
	}
	public void setCnt1(int cnt1) {
		this.cnt1 = cnt1;
	}
	public int getCnt2() {
		return cnt2;
	}
	public void setCnt2(int cnt2) {
		this.cnt2 = cnt2;
	}
	public int getCnt3() {
		return cnt3;
	}
	public void setCnt3(int cnt3) {
		this.cnt3 = cnt3;
	}
	public int getCnt4() {
		return cnt4;
	}
	public void setCnt4(int cnt4) {
		this.cnt4 = cnt4;
	}
	public int getCnt5() {
		return cnt5;
	}
	public void setCnt5(int cnt5) {
		this.cnt5 = cnt5;
	}
	public int getPercent1() {
		return percent1;
	}
	public void setPercent1(int percent1) {
		this.percent1 = percent1;
	}
	public int getPercent2() {
		return percent2;
	}
	public void setPercent2(int percent2) {
		this.percent2 = percent2;
	}
	public int getPercent3() {
		return percent3;
	}
	public void setPercent3(int percent3) {
		this.percent3 = percent3;
	}
	public int getPercent4() {
		return percent4;
	}
	public void setPercent4(int percent4) {
		this.percent4 = percent4;
	}
	public int getPercent5() {
		return percent5;
	}
	public void setPercent5(int percent5) {
		this.percent5 = percent5;
	}
}
