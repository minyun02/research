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
		//답변등록하기
		$(document).on('click','#responseSubmit',function(){
			alert("??")
			$("#responseForm").submit();
		});
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
    <h1><img src="${pageContext.request.contextPath}/images/header/common/logo.gif" alt="서울학교급식포털" /></h1>
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
                <li class="last subMenu"><a href="#"><img src="${pageContext.request.contextPath}/images/header/common/sm_part04Off.gif" alt="설문조사" /></a></li>
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
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/sub/particiation/sub_stitle_05On.gif" alt="설문조사" /></a></li>
      </ul>
      
      <form action="researchResponse" method="post" id="responseForm">
	      <div class="right_box">
	        <h3><img src="${pageContext.request.contextPath}/images/sub/particiation/title_04.gif" alt="급식기구관리전환" /></h3>
	        <p class="history"><img src="${pageContext.request.contextPath}/images/sub/history_home.gif" alt="home" /> 알림마당 <img src="${pageContext.request.contextPath}/images/sub/history_arrow.gif" alt="다음" /> <strong>설문조사</strong></p>
	        <p class="pt30"></p>
	       
	        <div class="tbl_box">
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
	                <td colspan="5" class="tl"><strong>${vo.sur_title}</strong></td>
	                </tr>
	              <tr>
	                <th>시작일</th>
	                <td class="tl">${vo.sur_sat_date}</td>
	                <th>종료일</th>
	                <td class="tl">${vo.sur_end_date}</td>
	                <th>결과확인</th>
	                <td class="tl"><img src="${pageContext.request.contextPath}/images/sub/btn/btn_view.gif" alt="결과보기" /></td>
	              </tr>
	              <tr>
	                <th>문항수</th>
	                <td colspan="5" class="tl">${vo.que_cnt}개</td>
	                </tr>
	              <tr>
	               <td colspan="6" class="tl">
						<c:forEach var="q" items="${qs}" varStatus="i">
		               		<div class="research">
		                       <input type="hidden" name="voList[${i.index}].sur_seq" value="${q.sur_seq}"/>
		                       <input type="hidden" name="voList[${i.index}].surq_seq" value="${q.surq_seq}"/>
		                       <input type="hidden" name="voList[${i.index}].suri_seq" value="${q.suri_seq}"/>
		                       <input type="hidden" name="voList[${i.index}].surq_title" value="${q.surq_title}"/>
		                       <input type="hidden" name="voList[${i.index}].writer" value="${q.writer}"/>
		                       <p>${i.index+1}. ${q.surq_title}</p>
		                        <ul>
		                        <li><input type="radio" name="voList[${i.index}].suri_num" value="1"/>&nbsp;&nbsp; ① ${q.suri_title1}</li>
		                        <li><input type="radio" name="voList[${i.index}].suri_num" value="2"/>&nbsp;&nbsp; ② ${q.suri_title2}</li>
		                        <li><input type="radio" name="voList[${i.index}].suri_num" value="3"/>&nbsp;&nbsp; ③ ${q.suri_title3}</li>
		                        <li><input type="radio" name="voList[${i.index}].suri_num" value="4"/>&nbsp;&nbsp; ④ ${q.suri_title4}</li>
		                        <li><input type="radio" name="voList[${i.index}].suri_num" value="5"/>&nbsp;&nbsp; ⑤ ${q.suri_title5}</li>
		                        <li>선택사유 <input type="text" id="aa" name="voList[${i.index}].description" class="inp" style="width:200px;" /> </li>
		                        </ul>
							</div>
						</c:forEach>
						
	               </td>
	              </tr>
	              <tr>
	               <th>첨부파일</th>
	               <td colspan="5" class="tl">
	               	내용입력 <img src="${pageContext.request.contextPath}/images/sub/btn/btn_pdf.gif" alt="pdf" />
	               </td>
	              </tr>
	            </tbody>
	          </table>
	          
	          <p class="pt40"></p>
	          <!-- btn--> 
	          <span class="bbs_btn"> 
	
	          <span class="wte_l"><a href="#" class="wte_r">목록</a></span>
	          <span class="wte_l"><a href="#" class="wte_r">수정</a></span>
	          <span class="wte_l"><a href="#" class="wte_r">삭제</a></span>
	          <span class="per_l"><a href="#" id="responseSubmit" onclick="return false;" class="pre_r">참여하기</a></span>
	          <span class="per_l"><a href="#" class="pre_r">결과보기</a></span>
	          <span class="wte_l"><a href="#" class="wte_r">사유전체보기</a></span>
				
	          </span> 
	          <!-- //btn--> 
	          
	        </div>
	      </div>
      </form>
      
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
