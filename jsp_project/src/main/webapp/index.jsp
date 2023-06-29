<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey"); // ID가지고옴 세션유지
	String name = (String)session.getAttribute("nameKey");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Technist Team.Arete</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet" href="resource/css/index.css">
<link rel="stylesheet" href="resource/css/calendar.css">
<script src="resource/js/calendar.js"></script>
<script src="resource/js/javascript.js"></script>
<style>
a {text-decoration: none;
color: black;}
</style>
</head>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79542a9051cd48bec237539cbd2ead15"></script>
<body>
    <div class="container">
        <div><a href="#">Team.Arete</a></div>
        <div><a href="intro/intro.jsp">팀소개</a></div>
        <div><a href="sboard/list.jsp">공지사항</a></div>
        <div><a href="board/list.jsp">자유게시판</a></div>
        
        <%if(id == null) { %>
        <div><a href="member/login.jsp">로그인</a></div>
        <% } else { %>
        <div><a href="member/mypage.jsp">마이페이지</a></div>
        <div><a href="member/logout.jsp">로그아웃</a></div>
        <% } %>
    </div>
    
    	<div id="login"> <%if(id != null) { %></div>
        <div>[<%=name %>님 로그인 완료]</div>
        <% } %>
        <hr>
    <div class="slide">
        <div>
            <img src="resource/image/img1.jpg" alt="">
            <img src="resource/image/img2.jpg" alt="">
            <img src="resource/image/img3.png" alt="">
            <img src="resource/image/img1.jpg" alt="">
        </div>
    </div>
    
    <div class="grid text-center" style="--bs-columns: 4; --bs-gap: 5rem;">
  <div class="g-col-2">
        <div class="sec_cal">
            <div class="cal_nav">
                <a href="javascript:;" class="nav-btn go-prev">prev</a>
                <div class="year-month"></div>
                <a href="javascript:;" class="nav-btn go-next">next</a>
            </div>
            <div class="cal_wrap">
                <div class="days">
                    <div class="day">MON</div>
                    <div class="day">TUE</div>
                    <div class="day">WED</div>
                    <div class="day">THU</div>
                    <div class="day">FRI</div>
                    <div class="day">SAT</div>
                    <div class="day">SUN</div>
                    
                </div>
                <div class="dates"></div>
            </div>
            
        </div>
  
  </div>
  <div class="g-col-2"><br><br>
 <p>운동 일정</p>
 <p>*2023.6.9 22:00 금요일*<br>
 *2023.6.23 22:00 금요일*<br>
 주소 : 경기도 시흥시 가일길48-2
 </p>
 <div id="map" style="width:500px;height:300px; margin-left:60px;"></div>
</div>

<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.441849, 126.812434), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>
    
    
<div class="content" style="padding: 20px 0 20px 0;">
<div class="container text-center">
  <div class="row">
    <div class="col">
    <div class="card" style="width: 18rem;">
  <img src="resource/image/3.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Technist Racket</h5>
    <p class="card-text">국내 배드민턴 최고 브랜드 테크니스트 라켓 JH-3</p>
    <a href="#" class="btn btn-primary">공식홈페이지</a>
  </div>
</div>
    </div>
    <div class="col">
    <div class="card" style="width: 18rem;">
  <img src="resource/image/1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Technist</h5>
    <p class="card-text">Team.Arete 공식스폰서</p>
    <a href="#" class="btn btn-primary">공식홈페이지</a>
  </div>
</div>
    </div>
    <div class="col">
    <div class="card" style="width: 18rem;">
  <img src="resource/image/2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Technist Racket</h5>
    <p class="card-text">국내 배드민턴 최고 브랜드 테크니스트 라켓 JH-4</p>
    <a href="#" class="btn btn-primary">공식홈페이지</a>
  </div>
</div>
    </div>
  </div>
</div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>