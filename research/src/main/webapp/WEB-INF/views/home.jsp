<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>서울학교급식포털</title>
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" >
<!--

	var flag1=true;
	var flag2=true;
	
	$(document).ready(function(){
		$(".mainMenu").each(function(index, item){
			$(item).click(function(){
				flag1=false;
			});
		});
		
		$(".subMenu").each(function(index, item){
			$(item).click(function(){
				flag1=true;
				flag2=false;
			});
		});
	});

   function getElementsByClass(searchClass, node, tag) {
     var classElements = new Array();
     if ( node == null ) node = document;
     if ( tag == null ) tag = '*';
     var els = node.getElementsByTagName(tag);
     var elsLen = els.length;
     var pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)");
     for (i = 0, j = 0; i < elsLen; i++) {
      if ( pattern.test(els[i].className) ) {
        classElements[j] = els[i];
        j++;
      }
    }
    return classElements;
  }

  function menuHidden(menu, sub) {
    menu.src = menu.src.replace("On", "Off");
    sub.style.display = "none";
  }

  function setEvtGnb() {
    var mainMenu = getElementsByClass("mainMenu");
    var prevMenu1, prevSub1, isHid1, prevMenu2, isHid2;
	
	var subMenu = getElementsByClass("subMenu");
	
    for (var i=0; i<mainMenu.length; i++) {
      (function (pos){
        mainMenu[pos].getElementsByTagName("img")[0].onmouseover = function(){
          if(prevMenu1) menuHidden(prevMenu1, prevSub1);
          prevMenu1 = this;
          this.src = this.src.replace("Off", "On");
          prevSub1 = document.getElementById("sub"+("0"+(pos+1)).match(/..$/));
          prevSub1.style.display = "block";
        };
    
        mainMenu[pos].onmouseout = function(e){
          var bool, e= e || event;
          (function (obj, tobj) {
            var childs = obj.childNodes;
            for (var x=0; x<childs.length; x++) {
              if(childs[x] == tobj) bool = true;
              else arguments.callee(childs[x], tobj);
            }
          })(this, document.elementFromPoint(e.clientX, e.clientY));
          if(flag1){
	          if(bool) return false;
	          menuHidden(prevMenu1, prevSub1);
          }
        };
      })(i);
    }
	
	for (var j=0; j<subMenu.length; j++) {
      (function (pos){
        subMenu[pos].getElementsByTagName("img")[0].onmouseover = function(){
          prevMenu2 = this;
          this.src = this.src.replace("Off", "On");
          prevSub2 = document.getElementById("sub"+("0"+(pos+1)).match(/..$/));
       	  flag2=true;
        };
    
        subMenu[pos].onmouseout = function(e){
          var bool, e= e || event;
          (function (obj, tobj) {
            var childs = obj.childNodes;
            for (var x=0; x<childs.length; x++) {
              if(childs[x] == tobj) bool = true;
              else arguments.callee(childs[x], tobj);
            }
          })(this, document.elementFromPoint(e.clientX, e.clientY));
          if(flag2){
	          if(bool) return false;
	          menuHidden(prevMenu2, prevSub2);
          }
        };
      })(j);
    }
  }
 
  window.onload = function() {
    setEvtGnb();
  }
//-->
</script>
<script type="text/javascript">
initPage = function() {
	
};

doGoTab = function(thisObject, tab) {
	$(".main_tab").find(">li>a").each(function(index, el) {
		$(el).removeClass("main_tab0"+(index+1)+"_on");
		$(el).addClass("main_tab0"+(index+1));
	});
	$(thisObject).addClass("main_tab"+tab+"_on");
	if("01"==tab){
		$("#tab02,#tab03").hide();
		$("#tab01").show();
	}else if("02"==tab){
		$("#tab01,#tab03").hide();
		$("#tab02").show();
	
	}else{
		$("#tab01,#tab02").hide();
		$("#tab03").show();
	}
};
</script>
<script type="text/javascript">
initPage = function() {
	
};

doGoTab = function(thisObject, tab) {
	$(".s_main_tab").find(">li>a").each(function(index, el) {
		$(el).removeClass("s_main_tab0"+(index+1)+"_on");
		$(el).addClass("s_main_tab0"+(index+1));
	});
	$(thisObject).addClass("s_main_tab"+tab+"_on");
	if("01"==tab){
		$("#tab02,#tab03").hide();
		$("#tab01").show();
	}else if("02"==tab){
		$("#tab01,#tab03").hide();
		$("#tab02").show();
	
	}else{
		$("#tab01,#tab02").hide();
		$("#tab03").show();
	}
};
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
    <h1><a href="http://www.naver.com"><img src="images/header/common/logo.gif" alt="서울학교급식포털" /></a></h1>
    <div class="topmenu">
      <ul>
      	<li class="bn f12">교직원 <span class="orange">홍길동</span>님 환영합니다.</li>
        <li class="bn"><a href="#"><img src="images/header/common/btn_join.gif" alt="회원등록" /></a></li>
      </ul>
      
      
      <ul>
        <li class="bn"><a href="#">HOME</a></li>
        <li><a href="#">SITEMAP</a></li>
        <li class="bn"> <a href="login"><img src="images/header/common/btn_login.gif" alt="로그인" /></a></li>
      </ul>
    </div>
    <div id="gnb">
      <h2>주메뉴</h2>
      <ul class="MM">
        <li class="mainMenu first"><a href="#"><img src="images/header/common/mm_infoOff.gif" id="sel1" alt="서울학교급식소개" /></a>
          <div class="subMenu" id="sub01" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_info01Off.gif" alt="인사말" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_info02Off.gif" alt="학교급식기본방향" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_info03Off.gif" alt="학교급식현황" /></a></li>
                <li class="last subMenu"><a href="#"><img src="images/header/common/sm_info04Off.gif" alt="학교급식 담당부서" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="images/header/common/mm_safetyOff.gif" alt="학교급식위생안전" /></a>
          <div class="subMenu" id="sub02" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_safety01Off.gif" alt="학교급식 위생관리" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_safety02Off.gif" alt="식중독 대처요령" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_safety03Off.gif" alt="안전사고예방" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_safety04Off.gif" alt="안전사고 대처요령" /></a></li>
                <li class="last subMenu"><a href="#"><img src="images/header/common/sm_safety05Off.gif" alt="위생.안전성 검사결과" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="images/header/common/mm_factoryOff.gif" alt="학교급식시설관리" /></a>
          <div class="subMenu" id="sub03" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_factory01Off.gif" alt="급식환경개선사업" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_factory01Off.gif" alt="급식시설개선사례" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_factory01Off.gif" alt="급식기구관리전환" /></a></li>
                <li class="last subMenu"><a href="#"><img src="images/header/common/sm_factory01Off.gif" alt="컨설팅신청안내" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="images/header/common/mm_foodOff.gif" alt="학교급식식재료" /></a>
          <div class="subMenu" id="sub04" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_food01Off.gif" alt="식재료 구매·관리" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_food02Off.gif" alt="식재료 시장조사" /></a></li>
                <li class="last subMenu"><a href="#"><img src="images/header/common/sm_food03Off.gif" alt="부적합 납품 업체" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="images/header/common/mm_eduOff.gif" alt="영양,교육" /></a>
          <div class="subMenu" id="sub05" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_edu01Off.gif" alt="영양·식생활교육" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_edu02Off.gif" alt="추천식단" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_edu03Off.gif" alt="추천레시피" /></a></li>
                <li class="last subMenu"><a href="#"><img src="images/header/common/sm_edu04Off.gif" alt="학교급식특색활동" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu"><a href="#"><img src="images/header/common/mm_partOff.gif" alt="참여마당" /></a>
          <div class="subMenu" id="sub06" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_part01Off.gif" alt="학교급식인력풀" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_part02Off.gif" alt="영양(교)사이야기" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_part03Off.gif" alt="조리(원)사이야기" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_part04Off.gif" alt="자유게시판" /></a></li>
                <li class="last subMenu"><a href="#"><img src="images/header/common/sm_part05Off.gif" alt="설문조사" /></a></li>
                <li class="right_bg"></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="mainMenu last"><a href="#"><img src="images/header/common/mm_noticeOff.gif" alt="알림마당" /></a>
          <div class="subMenu" id="sub07" style="display:none;">
            <div class="boxSR">
              <ul class="boxSM">
                <li class="left_bg"></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_notice01Off.gif" alt="급식소식" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_notice01Off.gif" alt="연수·행사" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_notice01Off.gif" alt="업무자료실" /></a></li>
                <li class="subMenu"><a href="#"><img src="images/header/common/sm_notice01Off.gif" alt="관련법규" /></a></li>
                <li class="last subMenu"><a href="#"><img src="images/header/common/sm_notice01Off.gif" alt="FAQ" /></a></li>
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
    <div id="main_contents">
      <p class="main_img"><img src="images/main/img_v.jpg" alt="건강한급식, 행복한학교,꿈과 끼를 키우는 서울행복교육" /></p>
      
      <!-- right-->
      <div class="main_right">
        <div class="notice"> 
          <!--tab object -->
          <ul class="main_tab">
            <li><a href="javascript:void(0)" onclick="doGoTab(this,'01');" class="main_tab01_on">급식소식</a></li>
            <li><a href="javascript:void(0)" onclick="doGoTab(this,'02');" class="main_tab02">연수·행사활동</a></li>
            <li><a href="javascript:void(0)" onclick="doGoTab(this,'03');" class="main_tab03">설문조사</a></li>
          </ul>
          <!--//tab object -->
          
          <div id="tab01" class="tabDivArea">
            <ul>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span></li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
            </ul>
            <span class="more"><img src="images/main/more.gif" alt="더보기" /></span> </div>
          <div id="tab02" class="tabDivArea" style="display:none;">
            <ul>
              <li><a href="#">연수활동.</a> <span class="main_data">11.02.28</span></li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
            </ul>
            <span class="more"><img src="images/main/more.gif" alt="더보기" /></span> </div>
          <div id="tab03" class="tabDivArea" style="display:none;">
            <ul>
              <li><a href="researchList">설문조사.</a> <span class="main_data">11.02.28</span></li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
              <li><a href="#">급식소식을 전해드립니다.</a> <span class="main_data">11.02.28</span> </li>
            </ul>
            <span class="more"><img src="images/main/more.gif" alt="더보기" /></span> </div>
        </div>
        <div class="m_search_box">
          <h3><img src="images/main/title_01.gif" alt="학교급식인력풀" /></h3>
          <fieldset>
            <legend>검색</legend>
            <p> 직종
              <select>
                <option>전체</option>
              </select>
            </p>
            <p> 지역
              <select>
                <option>구 선택</option>
              </select>
              <a href="#"><img src="images/main/btn_ser.gif" alt="검색" /></a> </p>
          </fieldset>
        </div>
        <div class="main_icon">
          <ul>
            <li><a href="#"><img src="images/main/img_btn_01.gif" alt="학교급식관리기구" /></a></li>
            <li><a href="#"><img src="images/main/img_btn_02.gif" alt="영양(교)사이야기" /></a></li>
            <li><a href="#"><img src="images/main/img_btn_03.gif" alt="조리사(원)이야기" /></a></li>
            <li><a href="#"><img src="images/main/img_btn_04.gif" alt="추천식단" /></a></li>
            <li><a href="#"><img src="images/main/img_btn_05.gif" alt="추천레시피" /></a></li>
            <li class="prn"><a href="#"><img src="images/main/img_btn_06.gif" alt="학교급식컨설팅" /></a></li>
          </ul>
        </div>
        <div class="main_left_box">
          <h3><img src="images/main/main_h3_01.gif" alt="학교급식특색활동" /><span class="more"><a href="#"><img src="images/main/more1.gif" alt="더보기" /></a></span></h3>
          <dl>
            <dt><img src="images/main/main_img.gif" alt="" /></dt>
            <dd><a href="#">학교급식정보센터 사이트를 오픈하였습니다. 사이트에 방문해주신 여러...</a></dd>
            <dd class="text"><a href="#">궁금한 사항은 문의게시판을 통해 질문...학교급식정보센터 사이트를 오픈하였습니다...</a></dd>
          </dl>
          <h3><img src="images/main/main_h3_02.gif" alt="연수·행사 활동" /> <span class="more"><a href="#"><img src="images/main/more1.gif" alt="더보기" /></a></span></h3>
          <dl>
            <dt><img src="images/main/main_img.gif" alt="" /></dt>
            <dd><a href="#">학교급식정보센터 사이트를 오픈하였습니다. 사이트에 방문해주신 여러...</a></dd>
            <dd class="text"><a href="#">궁금한 사항은 문의게시판을 통해 질문...학교급식정보센터 사이트를 오픈하였습니다...</a></dd>
          </dl>
        </div>
        <div class="s_banner">
          <ul>
            <li><a href="#"><img src="images/main/s_banner_01.gif" alt="식중독 발생시 대처요령" /></a></li>
            <li><a href="#"><img src="images/main/s_banner_02.gif" alt="안전사고 발생시 대처요령" /></a></li>
          </ul>
        </div>
        <div class="s_notice"> 
          <!--tab object -->
          <ul class="s_main_tab">
            <li><a href="javascript:void(0)" onclick="doGoTab(this,'01');" class="s_main_tab01_on">안내</a></li>
            <li><a href="javascript:void(0)" onclick="doGoTab(this,'02');" class="s_main_tab02">정보</a></li>
            <li><a href="javascript:void(0)" onclick="doGoTab(this,'03');" class="s_main_tab03">관련기관</a></li>
            <li><a href="javascript:void(0)" onclick="doGoTab(this,'04');" class="s_main_tab04">교육청</a></li>
          </ul>
          <!--//tab object -->
          
          <div id="s_tab01" class="tabDivArea">
            <ul>
              <li><a href="http://www.mfds.go.kr/jsp/page/food_zone_new.jsp" target="_blank">식중독지수</a></li>
              <li><a href="http://www.mfds.go.kr/fm/index.do" target="_blank">식중독예방</a></li>
              <li><a href="http://ews.foodnara.go.kr/jsp/src/session/loginForm.jsp" target="_blank">식중독조기경보시스템</a></li>
              <li><a href="http://www.haccphub.or.kr/welcome.do" target="_blank">HACCP통합검색</a></li>
              <li><a href="http://www.foodsafety.go.kr/fsafe/main.fs" target="_blank">농식품안전정보서비스</a></li>
              <li><a href="info/baseWay.html" target="_self">학교급식 기본방향</a> </li>
            </ul>
          </div>
          <div id="s_tab02" class="tabDivArea" style="display:none;">
            <ul>
              <li><a href="http://www.naqs.go.kr/index.jsp" target="_blank">농산물 품질</a></li>
              <li><a href="http://www.enviagro.go.kr/" target="_blank">인증</a></li>
              <li><a href="http://www.kamis.co.kr/customer/main/main.do" target="_blank">유통</a></li>
              <li><a href="http://www.ekape.or.kr/view/user/main/main.asp" target="_blank">축산물 품질</a></li>
              <li><a href="http://cattle.mtrace.go.kr/index.do" target="_blank">이력</a></li>
              <li><a href="http://www.ekapepia.com/home/homeIndex.do" target="_blank">유통</a></li>
              <li><a href="http://www.nfqs.go.kr/2013/index.asp" target="_blank">수산물 품질</a></li>
              <li><a href="http://www.fishtrace.go.kr/" target="_blank">이력</a></li>
              <li><a href="http://www.fips.go.kr/" target="_blank">유통</a></li>
              <li><a href="https://schoolhealth.kedi.re.kr/" target="_blank">학생건강정보</a></li>
              <li><a href="http://www.foodnara.go.kr/foodnara/index.do" target="_blank">식품나라</a></li>
              <li><a href="http://call.mfds.go.kr/kfda" target="_blank">식약처 FAQ</a></li>
              <li><a href="http://kostat.go.kr/portal/korea/kor_nw/2/1/index.board?bmode=list&bSeq=&aSeq=&pageNo=1&rowNum=10&navCount=10&currPg=&sTarget=title&sTxt=%EC%86%8C%EB%B9%84%EC%9E%90" target="_blank">물가동향</a></li>
            </ul>
          </div>
          <div id="s_tab03" class="tabDivArea" style="display:none;">
            <ul>
              <li><a href="http://www.moe.go.kr/" target="_blank">교육부</a></li>
              <li><a href="http://www.mfds.go.kr/" target="_blank">식품의약품안전처 </a></li>
              <li><a href="http://www.maf.go.kr/" target="_blank">농림축산식품부</a></li>
              <li><a href="http://www.mof.go.kr/" target="_blank">해양수산부</a></li>
              <li><a href="http://www.moel.go.kr/" target="_blank">고용노동부</a></li>
              <li><a href="http://www.kosha.or.kr/" target="_blank">안전보건공단 </a></li>
              <li><a href="http://www.mw.go.kr/" target="_blank">보건복지부 </a></li>
              <li><a href="http://www.cdc.go.kr/" target="_blank">질병관리본부 </a></li>
              <li><a href="http://www.g2b.go.kr/" target="_blank">g2b</a></li>
              <li><a href="http://www.eat.co.kr/" target="_blank">eaT</a></li>
              <li><a href="http://www.orbon.co.kr/" target="_blank">친환경유통센터</a></li>
            </ul>
          </div>
          <div id="s_tab04" class="tabDivArea" style="display:none;">
            <ul>
              <li><a href="http://www.seoul.go.kr/" target="_blank">서울특별시교육청</a></li>
              <li><a href="www.bogun.seoul.kr" target="_blank">서울특별시학교보건진흥원</a></li>
              <li><a href="#">동부</a></li>
              <li><a href="#">서부</a></li>
              <li><a href="#">남부</a></li>
              <li><a href="#">북부</a></li>
              <li><a href="#">중부</a></li>
              <li><a href="#">강동</a></li>
              <li><a href="#">강서</a></li>
              <li><a href="#">강남</a></li>
              <li><a href="#">동작</a></li>
              <li><a href="#">성동</a></li>
              <li><a href="#">성북</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- //right-->
      
      <div class="banner">
        <p><img src="images/main/banner/img_01.gif" alt="관련사이트" /></p>
        <ul>
          <li><a href="http://www.moe.go.kr/" target="_blank"><img src="images/main/banner/banner_01.gif" alt="교육부" /></a></li>
          <li><a href="http://www.seoul.go.kr/" target="_blank"><img src="images/main/banner/banner_02.gif" alt="서울특별시교육청" /></a></li>
          <li><a href="http://www.mfds.go.kr/" target="_blank"><img src="images/main/banner/banner_03.gif" alt="식품의약품안전처" /></a></li>
          <li><a href="http://www.maf.go.kr/" target="_blank"><img src="images/main/banner/banner_04.gif" alt="농림축산식품부" /></a></li>
          <li><a href="http://www.mof.go.kr/" target="_blank"><img src="images/main/banner/banner_05.gif" alt="해양수산부" /></a></li>
          <li><a href="http://www.kosha.or.kr/" target="_blank"><img src="images/main/banner/banner_06.gif" alt="안전보건공단" /></a></li>
        </ul>
        <span class="btn"> <a href="#"><img src="images/main/banner/up.gif" alt="위로" /></a> <a href="#"><img src="images/main/banner/stop.gif" alt="정지" /></a> <a href="#"><img src="images/main/banner/down.gif" alt="아래로" /></a> </span> </div>
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
