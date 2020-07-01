<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<% String root = request.getContextPath(); %>
<%response.setHeader("Pragma-directive", "no-cache");
response.setHeader("Cache-directive", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache");
response.setDateHeader("Expires",0);%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="elfunc" uri="/WEB-INF/tld/elFunctions.tld" %>
<!DOCTYPE html>
<html>
<head>
<!--[if lte IE 9]>
<script src="../resources/js/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script src="../resources/js/css3-mediaqueries.js"></script>
<![endif]-->
<!--[if lte IE 8]>
<script src="../resources/js/imgsizer.js"></script>
<![endif]-->

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<title>Mr.Shindelivery</title>

<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/agency.css" rel="stylesheet">
    <link href="../resources/css/shin.css" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/board.css" >
    <link href="../resources/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
    <link href="../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>

<body>
<jsp:include page="/top_foot/nav.jsp"></jsp:include>
 <div class="container">
        <!-- Content Row -->
        <div class="row contbox">
<!--         <h2>딜리버리 서비스</h2> -->
            <!-- Sidebar Column -->
            <div class="side_sub">
                <div class="list-group">
                    <a href="bbs.do" class="list-group-item active">공지 사항</a>
                    <a href="review.do" class="list-group-item">이용 후기</a>
                    <a href="qna.do" class="list-group-item">Q&A</a>
                    <a href="faq.do" class="list-group-item">FAQ</a>
                </div>
                <img class="img-responsive side_info" alt="" src="../images/customer.png">
                <img class="img-responsive side_info" alt="" src="../images/banking.png">
            </div>
            <!-- Content Column -->
            <div class="col-sm-9 form_l">
              <div class="col-sm-12">
              <div class="page_board clearfix">
                <div id="board" class="clearfix">
                    <ul class="board-list header">
                        <li>
                            <span class="no">번호</span>
                            <span class="head-title">제목</span>
                            <span class="author">작성자</span>
                            <span class="date">작성일</span>
                            <span class="hit">조회</span>
                        </li>
                    </ul>
                    <ul class="board-list">
                    <c:forEach var="dto" items="${list}">
                      <li><span class='no'>${dto.num }</span><span class='title'><nobr><a href='view.do?wr_bo=10&wr_id=${dto.idxno }'>${elfunc: convertChar(dto.title)}</a></nobr><c:if test="${elfunc: isNew(dto.date) eq 'true' }"><img style="border:0;margin-left:5px;" alt="new" src="../images/new.png"></c:if></span><span class='author'>${dto.name}</span><span class='date'>${dto.date}</span><span class='hit'>${dto.viewcnt}</span></li>
                     </c:forEach>
                    </ul>
                    <c:if test="${empty list}"><div class="data-none">공지 내용이 없습니다.</div></c:if>
                </div>
                
                <div class="searchwrap clearfix">
                  <fieldset class="search">
                  <form action="bbs.do" method="get">
                    <select class="search-frm" name="col" style="width:70px" title="검색 조건 선택">
                      <option value="title">제목</option>
                      <option value="conts">내용</option>
                    </select>
                  <input class="search-frm" type='text' name='word' value=''>
                  <input class="search-frm" type="submit" value="검색">
                  </form>
                 </fieldset>
               </div>
               ${pageIndexList}
                </div>
               </div>
              </div>
            </div>
        <hr>
      <jsp:include page="/top_foot/footer.jsp"></jsp:include>
    </div>

    <!-- /.container -->
    <script src="../resources/js/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jqBootstrapValidation.js"></script>
    <script src="../resources/js/shin.js"></script>
</body>
</html>
