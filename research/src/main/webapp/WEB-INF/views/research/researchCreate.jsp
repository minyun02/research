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
<script type="text/javascript">
initPage = function() {
	
};

doGoTab = function(thisObject, tab) {
	$(".business_tab").find(">li>a").each(function(index, el) {
		$(el).removeClass("business_tab0"+(index+1)+"_on");
		$(el).addClass("business_tab0"+(index+1));
	});
	$(thisObject).addClass("business_tab"+tab+"_on");
	if("01"==tab){
		$("#tab02").hide();
		$("#tab01").show();
	}else{
		$("#tab01").hide();
		$("#tab02").show();
	}
	
};

	$(function(){
		//시작날짜가 오늘날짜보다 이전일수없게 세팅		
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth()+1;
		var date = today.getDate();
		
		if(month<10){
			month ='0'+month;
		}
		if(date<10){
			date = '0'+date;
		}
		$("#startdate").attr('min', year+'-'+month+'-'+date)
		//종료일이 시작날짜보다 뒤일수없게 세팅
		$(document).on('change','#startdate', function(){
			$("#enddate").attr('min', $("#startdate").val());
		});

		//시작일이 없으면 종료일 선택 불가
		$(document).on('click', '#enddate',function(){
			if($("#startdate").val() == ''){
				alert("시작일을 먼저 선택해주세요.")
				$("#startdate").focus();
			}
		})
		
		//문항수 늘리기
		$(document).on('click','#plus', function(){
			var num = parseInt($("#numOfQs").text());
			var text = '<div class="research '+(num+1)+'">';
			var titleNum = 6;
			text += '<p>'+(num+1)+'.&nbsp;&nbsp;<input type="text" id="aa" name="voList['+(num)+'].surq_title" class="inp rTitle" required/>*<span>0/100</span></p>';
            text += '<ul>';
            text += '<li>&nbsp;&nbsp;①&nbsp;<input type="text" id="aa" name="voList['+(num)+'].suri_title1" class="inp suriTitle" required/>*<span>0/10</span></li>';
            text += '<li>&nbsp;&nbsp;②&nbsp;<input type="text" id="aa" name="voList['+(num)+'].suri_title2" class="inp suriTitle" required/>*<span>0/10</span></li>';
            text += '<li>&nbsp;&nbsp;③&nbsp;<input type="text" id="aa" name="voList['+(num)+'].suri_title3" class="inp suriTitle"/><span>0/10</span></li>';
            text += '<li>&nbsp;&nbsp;④&nbsp;<input type="text" id="aa" name="voList['+(num)+'].suri_title4"class="inp suriTitle"/><span>0/10</span></li>';
            text += '<li>&nbsp;&nbsp;⑤&nbsp;<input type="text" id="aa" name="voList['+(num)+'].suri_title5" class="inp suriTitle"/><span>0/10</span></li>';
            text += '<li>선택사유 <input type="text" id="aa" name="voList['+(num)+'].suri_reason" class="inp" style="width:615px;" disabled/><span></span></li>';
            text += '</ul></div>';
			$("#questions").append(text);
			$("#numOfQs").text(num+1);
			console.log(num)
			$("#que_cnt").val(parseInt(num+1));
		})
		
		// 문항수 줄이기
		$(document).on('click','#minus', function(){
			var num = parseInt($('#numOfQs').text());
			var obj = "."+num;
			if(num == 1){
				alert("문항수는 1개 이상.")
			}else{
				$(obj).remove();
				$("#numOfQs").text(num-1);
				$("#que_cnt").val(parseInt(num-1));
			}
		});
		
		//글자수 보여주기
		$(document).on('input','.rTitle', function(){
			var wordCnt = $(this).val().length;
			$(this).next().text(wordCnt+"/100");
			if(wordCnt>100){
				alert("100자 이상을 입력할 수 없습니다.")
				$(this).val($(this).val().substr(0, 100));
				$(this).next().text("100/100");
			}
			if($(this).val().trim() == "" && $(this).val().length > 0){
				alert("공백으로 문장을 시작할 수 없습니다. 다시 입력해주세요.")
				$(this).val('');
			}
		})
		
		$(document).on('input','.suriTitle', function(){
			var wordCnt = $(this).val().length;
			$(this).next().text(wordCnt+"/10");
			if(wordCnt>10){
				alert("10자 이상을 입력할 수 없습니다.")
				$(this).val($(this).val().substr(0, 10));
				$(this).next().text("10/10");
			}
			if($(this).val().trim() == "" && $(this).val().length > 0){
				alert("공백으로 문장을 시작할 수 없습니다. 다시 입력해주세요.")
				$(this).val('');
			}
		})
		
		//submit
// 		$(document).on('click','.pre_r', function(){
// 			$("#createForm").submit();
// 		})
		
	});
</script>
</head>
<body>
<div id="wrap"> 
  <!--skip S-->
  <ul id="skipnavi">
    <li><a href="#gnb">주메뉴 바로가기</a></li>
    <li><a href="#contents">메인내용 바로가기</a></li>
    <li><a href="#footer">하단 바로가기</a></li>
  </ul>
  <!--skip E--> 
  
  <!-- header-->
  <div id="header">
    <h1><a href="researchList"><img src="${pageContext.request.contextPath}/images/header/common/logo.gif" alt="서울학교급식포털" /></a></h1>
    <div class="topmenu">
      <ul>
        <li class="bn"><a href="#">HOME</a></li>
        <li><a href="#">SITEMAP</a></li>
        <li class="bn"> <a href="#"><img src="${pageContext.request.contextPath}/images/header/common/btn_login.gif" alt="로그인" /></a></li>
      </ul>
    </div>
    <div id="gnb">
      <h2>주메뉴</h2>
      <ul class="MM">
        <li class="mainMenu first"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/mm_infoOff.gif" id="sel1" alt="서울학교급식소개" /></a>
         <div class="subMenu" id="sub01" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_info01Off.gif" alt="인사말" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_info02Off.gif" alt="학교급식기본방향" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_info03Off.gif" alt="학교급식현황" /></a></li>
                <li class="last subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_info04Off.gif" alt="학교급식 담당부서" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/mm_safetyOff.gif" alt="학교급식위생안전" /></a>
          <div class="subMenu" id="sub02" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_safety01Off.gif" alt="학교급식 위생관리" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_safety02Off.gif" alt="식중독 대처요령" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_safety03Off.gif" alt="안전사고예방" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_safety04Off.gif" alt="안전사고 대처요령" /></a></li>
                <li class="last subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_safety05Off.gif" alt="위생.안전성 검사결과" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/mm_factoryOff.gif" alt="학교급식시설관리" /></a>
          <div class="subMenu" id="sub03" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                 <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_factory01Off.gif" alt="급식환경개선사업" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_factory01Off.gif" alt="급식시설개선사례" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_factory01Off.gif" alt="급식기구관리전환" /></a></li>
                <li class="last subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_factory01Off.gif" alt="컨설팅신청안내" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/mm_foodOff.gif" alt="학교급식식재료" /></a>
          <div class="subMenu" id="sub04" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                 <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_food01Off.gif" alt="식재료 구매·관리" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_food02Off.gif" alt="식재료 시장조사" /></a></li>
                <li class="last subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_food03Off.gif" alt="부적합 납품 업체" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/mm_eduOff.gif" alt="영양,교육" /></a>
          <div class="subMenu" id="sub05" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_edu01Off.gif" alt="영양·식생활교육" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_edu02Off.gif" alt="추천식단" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_edu03Off.gif" alt="추천레시피" /></a></li>
                <li class="last subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_edu04Off.gif" alt="학교급식특색활동" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/mm_partOff.gif" alt="알림마당" /></a>
          <div class="subMenu" id="sub06" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_part01Off.gif" alt="학교급식인력풀" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_part02Off.gif" alt="영양(교)사이야기" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_part03Off.gif" alt="조리(원)사이야기" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_part04Off.gif" alt="자유게시판" /></a></li>
                <li class="last subMenu"><a href="researchList"><img src="${pageContext.request.contextPath}/images/header/common/sm_part04Off.gif" alt="설문조사" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu last"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/mm_noticeOff.gif" alt="정보마당" /></a>
          <div class="subMenu" id="sub07" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_notice01Off.gif" alt="급식소식" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_notice01Off.gif" alt="연수·행사" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_notice01Off.gif" alt="업무자료실" /></a></li>
                <li class="subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_notice01Off.gif" alt="관련법규" /></a></li>
                <li class="last subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_notice01Off.gif" alt="FAQ" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <!-- //header--> 
  
  <!-- container-->
  <div id="container">
    <div id="contents">
      <h2>메인내용</h2>
      <p><img src="${pageContext.request.contextPath}/images/sub/info/sub_vimg_01.jpg" alt="건강한 급식 행복한 학교" /></p>
      <ul class="lnb">
        <li><img src="${pageContext.request.contextPath}/images/sub/particiation/sub_title_01.gif" alt="알림마당" /></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/sub/particiation/sub_stitle_01Off.gif" alt="학교급식인력풀" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/sub/particiation/sub_stitle_02Off.gif" alt="영양(교)사이야기" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/sub/particiation/sub_stitle_03Off.gif" alt="조리(원)사이야기" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/sub/particiation/sub_stitle_04Off.gif" alt="자유게시판" /></a></li>
        <li><a href="researchList"><img src="${pageContext.request.contextPath}/images/sub/particiation/sub_stitle_05On.gif" alt="설문조사" /></a></li>
      </ul>
      <div class="right_box">
        <h3><img src="${pageContext.request.contextPath}/images/sub/particiation/title_04.gif" alt="급식기구관리전환" /></h3>
        <p class="history"><img src="${pageContext.request.contextPath}/images/sub/history_home.gif" alt="home" /> 알림마당 <img src="${pageContext.request.contextPath}/images/sub/history_arrow.gif" alt="다음" /> <strong>설문조사</strong></p>
        <p class="pt30"></p>
        
       
        <div class="tbl_box">
	        <form action="researchCreateOk" method="post" enctype="multipart/form-data" id="createForm" >
	          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_type01" summary="설문조사">
	            <caption>
	            설문조사
	            </caption>
	            <colgroup>
	            <col width="15%"/>
	            <col width="20%"/>
	            <col width="15%"/>
	            <col width="20%"/>
	            <col width="15%"/>
	            <col width="%"/>
	            </colgroup>
	            <tbody>
	              <tr>
	                <th>제목</th>
	                <td colspan="5" class="tl">
	                	<input type="text" id="aa" name="sur_title" class="inp rTitle" required/>
	                	<span id="subjectWord">0/100</span>
	                </td>
	                </tr>
	              <tr>
	                <th>시작일</th>
	                <td class="tl"><input type="date" id="startdate" name="sur_sat_date" class="inp" style="width:130px;" required/></td>
	                <th>종료일</th>
	                <td class="tl"><input type="date" id="enddate" name="sur_end_date" class="inp" style="width:130px;" required/></td>
	                <th style="background-color:white;"></th>
	                <td class="tl" style="width:100px;"></td>
	              </tr>
	              <tr>
	                <th>문항수</th>
	                <td colspan="5" class="tl">
	                	<button id="minus" type="button">-</button>
	                	<span id="numOfQs" style="margin: 0 10px">1</span><input id="que_cnt" type="hidden" name="que_cnt" value="1"/>
	                	<button id="plus" type="button">+</button>
	                </td>
	                </tr>
	              <tr>
	               <td colspan="6" class="tl" id="questions">
	               	   <div class="research">
	                       <p>1.&nbsp;&nbsp;<input type="text" id="aa" name="voList[0].surq_title" class="inp rTitle"  title="1. 위생불량 납품단절 편함" required/>*<span id="qTitle">0/100</span></p>
	                        <ul>
	                        <li>&nbsp;&nbsp;①&nbsp;<input type="text" id="aa" name="voList[0].suri_title1" class="inp suriTitle"  title="매우그렇다" required/>*<span id="firstTitle">0/10</span></li>
	                        <li>&nbsp;&nbsp;②&nbsp;<input type="text" id="aa" name="voList[0].suri_title2" class="inp suriTitle"  title="매우그렇다" required/>*<span id="secondTitle">0/10</span></li>
	                        <li>&nbsp;&nbsp;③&nbsp;<input type="text" id="aa" name="voList[0].suri_title3" class="inp suriTitle"  title="매우그렇다" /><span id="thirdTitle">0/10</span></li>
	                        <li>&nbsp;&nbsp;④&nbsp;<input type="text" id="aa" name="voList[0].suri_title4" class="inp suriTitle" title="매우그렇다" /><span id="fourthTitle">0/10</span></li>
	                        <li>&nbsp;&nbsp;⑤&nbsp;<input type="text" id="aa" name="voList[0].suri_title5" class="inp suriTitle"  title="매우그렇다" /><span id="fifthTitle">0/10</span></li>
	                        <li>선택사유 <input type="text" id="aa" name="voList[0].suri_reason" class="inp" style="width:615px;" disabled/><span id="reason"></span> </li>
	                        </ul>
						</div>
	               </td>
	              </tr>
	              <tr>
	               <th>첨부파일</th>
	               <td colspan="5" class="tl">
	               		<input type="file" id="aa" name="aa" />
	               </td>
	              </tr>
	            </tbody>
	          </table>
	          
	          <p class="pt40"></p>
	          <!-- btn--> 
	          <span class="bbs_btn"> 
	
	          <span class="wte_l"><a href="researchList" class="wte_r">목록</a></span>
<!-- 	          <span class="per_l"><a href="#" onclick="return false;" class="pre_r">등록</a></span> -->
	          <span class="per_l"><input type="submit" class="pre_r" style="border:none;"/></span>
<!-- 	          <span class="wte_l"><a href="#" onclick="return false;" class="wte_r">취소</a></span> -->
	
	          </span> 
	          <!-- //btn--> 
          </form>
        </div>
      </div>
      
      <p class="bottom_bg"></p>
    </div>
  </div>
  <!-- //container-->
  
  <div id="footer">
    <h2>하단</h2>
    <address>
    110-781) 서울특별시 종로구 송월길 48(신문로 2-77)
    </address>
    <p>COPYRIGHT(C) 2013 <b>SEOUL metropolitan office of education</b> ALL RIGHT RESERVED</p>
    <ul>
      <li class="bn"><a href="#">개인정보보호정책</a></li>
      <li><a href="#">이메일 무단수집거부</a></li>
      <li><a href="#">뷰어프로그램</a></li>
      <li><a href="#">저작권보호</a></li>
      <li><a href="#">서울학교급식 배너다운로드</a></li>
    </ul>
  </div>
</div>
</body>
</html>
