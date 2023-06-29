<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.Month" %>

<%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("idKey"); // ID가지고옴 세션유지
String name = (String) session.getAttribute("nameKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet" href="../resource/css/index.css">
<link rel="stylesheet" href="resource/css/style.css">
<script src="resource/js/javascript.js"></script>
<style>
a {
	text-decoration: none;
	color: black;
}
</style>
<head>
<div class="container">
	<div><a href="../index.jsp">Team.Arete</a></div>
	<div>
		<a href="#">팀소개</a>
	</div>
	<div>
		<a href="../sboard/list.jsp">공지사항</a>
	</div>
	<div>
		<a href="../board/list.jsp">자유게시판 
	</div>

	<%
		if (id == null) {
		%>
	<div>
		<a href="../member/login.jsp">로그인</a>
	</div>
	<%
		} else {
		%>
	<div>
		<a href="../member/mypage.jsp">마이페이지 
	</div>
	<div>
		<a href="../member/logout.jsp">로그아웃</a>
	</div>
	<%
		}
		%>
</div>

<div id="login">
	<%
		if (id != null) {
		%>
</div>
<div style="text-align-last: right;">
	[<%=name%>님 로그인 완료]
</div>
<%
	}
	%>
<hr>

<!--   <style>
         table {
            border-collapse: collapse;
            width: 300px;
            margin: 0 auto;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #000;
            color: #fff;
        }

        td {
            background-color: #f2f2f2;
            color: #333;
        }

        .today {
            background-color: #000;
            color: #fff;
        }
  </style> -->
</head>
<body>
 <%--    <%
        // 현재 날짜와 시간 가져오기
        LocalDateTime currentDateTime = LocalDateTime.now();
        LocalDate currentDate = currentDateTime.toLocalDate();

        // 현재 년도와 월 가져오기
        int currentYear = currentDate.getYear();
        int currentMonth = currentDate.getMonthValue();

        // 대한민국 시간대로 날짜 출력
        out.println("현재 시간: " + currentDateTime + "<br>");
        %>

    <h2><%= currentYear %>년 <%= currentMonth %>월 달력</h2>

    <table>
        <tr>
            <th>일</th>
            <th>월</th>
            <th>화</th>
            <th>수</th>
            <th>목</th>
            <th>금</th>
            <th>토</th>
        </tr>
        <%
            // 첫 번째 날짜의 요일 가져오기
            LocalDate firstDateOfMonth = LocalDate.of(currentYear, currentMonth, 1);
            int firstDayOfWeek = firstDateOfMonth.getDayOfWeek().getValue();

            // 해당 월의 마지막 날짜 가져오기
            int lastDayOfMonth = firstDateOfMonth.getMonth().maxLength();

            // 달력 출력
            int day = 1;
            for (int i = 0; i < 6; i++) {
                out.println("<tr>");
                for (int j = 0; j < 7; j++) {
                    if ((i == 0 && j < firstDayOfWeek) || day > lastDayOfMonth) {
                        // 첫 주에서 첫 번째 날짜 이전이거나 마지막 날짜 이후인 경우 빈 셀로 출력
                        out.println("<td>&nbsp;</td>");
                    } else {
                        // 유효한 날짜인 경우 날짜 출력
                        out.println("<td>" + day + "</td>");
                        day++;
                    }
                }
                out.println("</tr>");
                if (day > lastDayOfMonth) {
                    break;
                }
            }
        %>
    </table> --%>
  <header>
    <img src="resource/logo.png" alt="Team Logo">
    <h1>Team.Arete</h1>
    <p>잠재력을 발휘하라 !</p>
  </header>

  <section id="team-intro">
    <h2>팀 소개</h2>
    <p>
		"팀.Arete: 탁월함을 추구하는 협업의 힘!"<br>

우리는 탁월함을 추구하며 협업하는 팀입니다. 함께 더 나은 결과물을 만들어내고자 노력합니다.<br>

"팀.Arete: 협업으로 이루는 혁신과 성장"<br>

우리는 협업을 통해 혁신과 성장을 이루는 팀입니다. 우리의 열정과 노력으로 새로운 가능성을 창출합니다.<br>
"팀.Arete: 창의적인 아이디어를 현실로"<br>

우리는 창의적인 아이디어를 현실로 구현하는 팀입니다. 우리의 역량과 열정을 통해 혁신적인 결과물을 만들어냅니다.   <br> 
    </p>
  </section>

  <section id="team-members">
    <h2>구성원 소개</h2>
    <ul>
      <li>

        <h3>홍길동</h3>
        <p>단장</p>
      </li>
      <li>

        <h3>이순신</h3>
        <p>감독</p>
      </li>
      <li>

        <h3>강감찬</h3>
        <p>코치</p>
      </li>
      <li>

        <h3>신짱구</h3>
        <p>총무</p>
      </li>
      <!-- 나머지 구성원들도 동일한 형식으로 추가 -->
    </ul>
  </section>

  <section id="team-gallery">
    <h2>활동 사진</h2>
    <div class="gallery">
      <img src="resource/6.jpeg" alt="Activity 1" width="1000">
      <img src="resource/7.jpeg" alt="Activity 2" width="1000">
      <!-- 추가적인 활동 사진들도 동일한 형식으로 추가 -->
    </div>
  </section>

  <section id="contact">
    <h2>연락처</h2>
    <ul>
      <li>Email:eldnjs6453@naver.com</li>
      <li>Phone: 010-1111-1234</li>
      <li>Address: 경기도 시흥시 </li>
    </ul>
  </section>

  <footer>
    <ul class="social-media">
      <li><a href="#"><img src="resource/img.png" alt="Facebook"></a></li>
      <li><a href="#"><img src="resource/트위터.png" alt="Twitter"></a></li>
      <li><a href="#"><img src="resource/insta.png" alt="Instagram"></a></li>
      <!-- 다른 소셜 미디어 계정도 동일한 형식으로 추가 -->
    </ul>
  </footer>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</body>
</html>