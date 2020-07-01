<%@page import="shindelivery.tool.Tool"%><%@page import="shindelivery.board.ReviewDTO"%><%@page import="java.util.ArrayList"%><%@page import="shindelivery.board.ReviewMainlist"%>
<%@page import="shindelivery.board.ReviewDAO"%><%@ page contentType="text/html; charset=UTF-8" %><% request.setCharacterEncoding("UTF-8"); %>
<% String root = request.getContextPath(); %><% ReviewMainlist dao = new ReviewMainlist(); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><%@taglib prefix="elfunc" uri="/WEB-INF/tld/elFunctions.tld" %>
<!DOCTYPE html>
<html>
<head>
<!--[if lte IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script src="resources/js/css3-mediaqueries.js"></script>
<![endif]-->
<!--[if lte IE 8]>
<script src="resources/js/imgsizer.js"></script>
<![endif]-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="편리한 제주도 짐옮김이 신딜리버리를 이용해보세요.">
    <title>Mr.Shindelivery</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/agency.css" rel="stylesheet">
    <link href="resources/css/shin.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css" href="jquery.fullPage.css" />
<!--   <link rel="stylesheet" type="text/css" href="examples.css" /> -->
<script src="https://code.jquery.com/jquery-1.11.2.js"></script>
  <script type="text/javascript" src="jquery.fullPage.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('#fullpage').fullpage({
    	   anchors: ['firstPage', 'secondPage', '3rdPage', '4rdPage', '5rdPage'],
    	   navigation: true,
         navigationPosition: 'right'
      });
    });
  </script>
<script>
$(function(){
$('#rbtn').mouseover(function(){
  $('.header_img').css('backgroundImage', 'url("images/main_img02.png")');
});
$('#rbtn').mouseout(function(){
  $('.header_img').css("backgroundImage","url(images/main_img01.png)");
}); 
});
</script>
<script type="text/javascript">
function rTime(){
	 today = new Date();
	 d_day = new Date("december 12 2014 00:00:00");
	 days = (today - d_day) /24/60/60/1000;
	 daysround = Math.floor(days);
	 hours = (today - d_day) / 1000 / 60 / 60 - (24 * daysround);
	 hoursround = Math.floor(hours);
	 minutes = (today - d_day) / 1000 /60 - (24 * 60 * daysround) - (60 * hoursround);
	 minutesround = Math.floor(minutes);
	 seconds = (today - d_day) / 1000 - (24 * 60 * 60 * daysround) - (60 * 60 * hoursround) - (60 * minutesround);
	 secondsround = Math.round(seconds);
	 sDateStr = daysround + "일 " + hoursround + "시간 " + minutesround + "분 " + secondsround + "초 지났습니다";
	 timeDiv.innerHTML=sDateStr;
	 newtime = window.setTimeout("rTime();", 1000);
	}
</script>
</head>

<body onload="rTime();">
<jsp:include page="top_foot/nav.jsp"></jsp:include>
 <div id="fullpage">
  <div class="section header_img active" id="section0" >
    <!-- <img id="header_img" class="img-responsive" alt="main" src="images/main_img01.png">
  -->   <div class="container">
            <div class="intro-text">
            	<div class="intro-times-in"><i class="fa fa-clock-o fa-2" aria-hidden="true"></i> 고객님의 짐을 분실하지 않은지<div id = "timeDiv"></div></div>
                <div class="intro-lead-in">여행의 품격을 더하다</div>
                <div class="intro-heading">Excellent Shindelivery</div>
                <a href="#3rdPage" id="rbtn" class="reserve_scroll btn btn-info btn-sm" >예약하기</a>
            </div>
     </div>
  </div>
  <div class="section" id="section1">
  <div class="container">
     <div class="row" style="margin-top:25px;">
     <div class="col-sm-12">
            <img alt="" class="character" src="images/character.png">
            <div class="popover right" style="display: block;">
              <div class="arrow"></div>
              <!-- <h3 class="popover-title">저희는요 !!</h3> -->
              <div class="popover-content">
              <p>안녕하세요.신딜리버리입니다<br>저희는 제주도여행을 보다 편리하게 여행을 즐기실수 있도록 온라인 예약을 통해 공항과 숙소,숙소에서 숙소 간 여행짐을 안전하게 옮겨드리는 온디맨드 O2O 기반의 여행 짐 딜리버리 서비스 업체 입니다.</p>
            </div>
            </div>
            </div>
     </div>
     <div class="row">
        <div class="col-xs-6 col-sm-6">
        <div class="alert alert-info text-center"><h2 class="alert_info">혹시 내 소중한 짐이 분실 되진 않을까? 걱정되시죠?</h2><hr><h6>3년간 분실품 0개!</h6><span class="alert-talk">
        고객님께 소중한 짐이라면 저희에게도 너무나 소중한 짐입니다.<br>저희는 철저한 짐 위치추적 시스템 으로 고객님의 짐을 픽업하거나 원하시는 숙소or공항에 딜리버리 를 완료할때까지 수시로 고객님께 위치를 전송해 드리고 있습니다.</span></div>
        </div>
        <div class="col-xs-6 col-sm-6">
        <div class="alert alert-info text-center"><h2 class="alert_info">보다 편리한 제주도 여행을 제공해드립니다.</h2><hr><h6>재이용고객 70% 이상!</h6><span class="alert-talk">
        저희는 짐 뿐만이 아니라 고객님께 제주도 여행에 알아두시면 좋은 정보와 날씨 그리고 제주도를 처음 방문하셔서 여행 일정을 정하는데 고민이신 분들을 위하여 카카오톡상담도 해드리고 있습니다. 이 처럼 짐 옮김 서비스 뿐만이 아닌 제주도여행에서의 모든 불편함을 해소해드리기 위해 열심히 뛰고 또 뛰겠습니다!</span></div>
        </div>
     </div>
     </div>
  </div>

  <div class="section" id="section2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-head">온라인 예약</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-4 col-sm-4 text-center"><a onclick="location.href='reserve/online1.do'"><img class="img-responsive" alt="" src="images/reserve01.png"><span class="helps">공항 <i class="fa fa-angle-right"></i> 숙소</span></a></div>
                <div class="col-xs-4 col-sm-4 text-center"><a onclick="location.href='reserve/online2.do'"><img class="img-responsive" alt="" src="images/reserve02.png"><span class="helps">숙소 <i class="fa fa-angle-right"></i> 숙소</span></a></div>
                <div class="col-xs-4 col-sm-4 text-center"><a onclick="location.href='reserve/online3.do'"><img class="img-responsive" alt="" src="images/reserve03.png"><span class="helps">숙소 <i class="fa fa-angle-right"></i> 공항</span></a></div>
            </div>
        </div>
  </div>
   <div class="section" id="section3">
   <div class="container">
    <div class="row">
      <section class="autoplay slider">
	<%ArrayList list = dao.list(5);
	for (int index = 0; index < list.size(); index++) {
		ReviewDTO dto = (ReviewDTO) list.get(index); String conts = dto.getContents();
		if(conts.length()>130){conts = conts.substring(0, 130) + "...";}%>
        <div>
         <div class="reviews">
          <div class="reviews-inner">
          <h5 class="title"><%=Tool.convertChar(dto.getTitle()) %></h5>
          <p class="comments"><%=Tool.convertChar(conts) %></p>
          <p class="name"><%=dto.getName().substring(0,dto.getName().length()-1)+"＊" %></p>
          </div>
         </div>
        </div>
 	<%}%>
  </section>
  <h4 class="text-center wlink"><i class="fa fa-comments-o" aria-hidden="true"></i> <a href="customer/review.do">이용후기 더 보기</a></h4>
  </div>
  </div>
  </div>
  <div class="section" id="section4">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-head">About us</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-sm-3 col-lg-3 about margin">
                <ul class="list-unstyled">
                <li>CUSTOMER CENTER</li>
                <li><hr class="bot-hr"></li>
                <li>1899 - 9168</li>
                <li>평일 : 10:00 ~ 19:00</li>
                <li>주말 : 10:00 ~ 18:00</li>
                <li>카카오톡 문의 ID : 신딜리버리</li>
                </ul>
                </div>
                <div class="col-xs-6 col-sm-3 col-lg-3 about">
                <ul class="list-unstyled">
                <li>BANK INFO</li>
                <li><hr class="bot-hr"></li>
                <li>신한은행 : 140 - 010 - 879939</li>
                <li>예금주 : (주)미스터신 딜리버리</li>
                </ul>
                </div>
                <div class="col-xs-12 col-sm-5 col-lg-5 about">
                <ul class="list-unstyled">
                <li class="about-t">About</li>
                <li><hr class="about-hr"></li>
                <li>상호: (주)미스터신 딜리버리</li>
                <li>대표: 신규진,신규환&nbsp;&nbsp;&nbsp;고객센터: 1899-9168</li>
                <li>개인정보관리책임자: 한승철</li>
                <li>이메일: shindelivery@naver.com</li>
                <li>서울지사: 서울특별시 송파구 백제고분로 501 청호빌딩 609호</li>
                <li>제주본사: 제주특별자치도 제주시 연동8길 29 풀하우스오피스텔 616호</li>
                <li>사업자등록번호: 133-81-43384 , 616-31-05105</li>
                </ul>
                <span class="copyright">Copyright &copy; 2016 (주)미스터신 딜리버리 All rights reserved.</span>
                </div>
            </div>
        </div>
  </div>
</div>
<jsp:include page="top_foot/footer.jsp"></jsp:include>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/cbpAnimatedHeader.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
      $('.autoplay').slick({
    	  arrows: false,
    	  slidesToShow: 1,
    	  slidesToScroll: 1,
    	  autoplay: true,
    	  autoplaySpeed: 3500,
    	});
    });
  </script>
</body>
</html>