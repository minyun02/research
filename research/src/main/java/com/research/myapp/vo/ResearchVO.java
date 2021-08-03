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
}
