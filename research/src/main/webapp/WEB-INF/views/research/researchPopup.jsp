<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>서울학교급식포털</title>
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function windowClose(){
		self.close();
	}
</script>
<style>
	ul, li{
		float: left;
	}
	.wordcut{
		max-width : 100px;
		white-space: nowrap;
		overflow-wrap: normal;
		overflow: hidden;
		text-overflow: ellipsis;
		text-align: left;
/* 		display: table-cell; */
	}
	.title{
		max-width : 200px;
		white-space: nowrap;
		overflow-wrap: normal;
		overflow: hidden;
		text-overflow: ellipsis;
		text-align: left;
/* 		display: table-cell; */
	}
</style>
</head>
<body>
<!-- w100% h545px -->
<div class="pop">
  <div class="pop_box">
  	<h2>결과보기<span class="rearch_end">투표종료</span></h2>
  	<c:forEach var="list" items="${list}" varStatus="i">
	    <div class="pop_list" style="overflow:hidden;">
	    	<h2 >${i.index+1}. ${list.surq_title} </h2>
		        <div class="rearch_box">
		        	<ul style="width: 100%; margin-top:5px;">
		        		<li>
		        			①
		        		</li>
		        		<li style="width: 50%; margin: 0 50px 0 5px;">
		        			<div style="background-color:yellow; height:13px; width:${list.percent1}%;"></div>
		        		</li>
		        		<li>
		        			<span><c:out value="${list.cnt1}"/>&nbsp;&nbsp;</span> <span>①</span> <span class="wordcut">${list.suri_title1}</span>
		        		</li>
		        	</ul>
		        
		        	<ul style="width: 100%; margin-top:5px;">
		        		<li>
		        			②
		        		</li>
		        		<li style="width: 50%; margin: 0 50px 0 5px;">
		        			<div style="background-color:red; height:13px; width:${list.percent2}%;"></div>
		        		</li>
		        		<li>
		        			<span>${list.cnt2}&nbsp;&nbsp;</span> <span>②</span> <span class="wordcut">${list.suri_title2}</span>
		        		</li>
		        	</ul>
		        	
		        	<ul style="width: 100%; margin-top:5px;">
		        		<li>
		        			③
		        		</li>
		        		<li style="width: 50%; margin: 0 50px 0 5px;">
		        			<div style="background-color:blue; height:13px; width:${list.percent3}%;"></div>
		        		</li>
		        		<li>
		        			<span>${list.cnt3}&nbsp;&nbsp;</span> <span>③</span> <span class="wordcut">${list.suri_title3}</span>
		        		</li>
		        	</ul>
		        	
		        	<ul style="width: 100%; margin-top:5px;">
		        		<li>
		        			④
		        		</li>
		        		<li style="width: 50%; margin: 0 50px 0 5px;">
		        			<div style="background-color:green; height:13px; width:${list.percent4}%;"></div>
		        		</li>
		        		<li>
		        			<span>${list.cnt4}&nbsp;&nbsp;</span> <span>④</span> <span class="wordcut">${list.suri_title4}</span>
		        		</li>
		        	</ul>
		        	
		        	<ul style="width: 100%; margin-top:5px;">
		        		<li>
		        			⑤
		        		</li>
		        		<li style="width: 50%; margin: 0 50px 0 5px;">
		        			<div style="background-color:gray; height:13px; width:${list.percent5}%;"></div>
		        		</li>
		        		<li>
		        			<span>${list.cnt5}&nbsp;&nbsp;</span> <span>⑤</span> <span class="wordcut">${list.suri_title5}</span>
		        		</li>
		        	</ul>
		        </div>
		        
		        
	    </div>
  	</c:forEach>
    
	<p class="pt20"></p>
    <div class="pop_btn">
<%--     	<span class="blue_l"><a href="researchView?sur_seq=${sur_seq}" class="blue_r">참여</a></span> --%>
        <span class="gray_l"><a href="#" onclick="windowClose(); return false;" class="gray_r">닫기</a></span>
    </div>
  </div>
  
  </div>
</body>
</html>
