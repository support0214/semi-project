<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.MemberMgr"%>
<%@ page import="member.MemberBean"%>

<%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("idKey"); // 세션에서 회원 ID 가져오기
MemberMgr memberMgr = new MemberMgr(); // MemberMgr 객체 생성
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body width=300px>
	<h1>회원 탈퇴</h1>
	<div>아이디 : <%=id %></div>
	<form action="MemberWithdrawServlet" method="POST">
		<label for="password">비밀번호:</label> <input type="password"
			id="password" name="password" required> <br> <input
			type="submit" value="탈퇴">
	</form>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberMgr"%>
<%@ page import="member.MemberBean"%>

<%
    request.setCharacterEncoding("UTF-8");
    String id = (String) session.getAttribute("idKey"); // 세션에서 회원 ID 가져오기
    MemberMgr memberMgr = new MemberMgr(); // MemberMgr 객체 생성
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 탈퇴</title>
    <style>
        body {
            background-color: #F4F4F4;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #FFF;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
        }

        h1 {
            text-align: center;
            margin-top: 0;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #CCC;
            border-radius: 3px;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            background-color: #333;
            color: #FFF;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>회원 탈퇴</h1>
    <div>아이디: <%= id %></div>
    <form action="MemberWithdrawServlet" method="POST">
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="password" required placeholder="사용자의 비밀번호 입력">
        <br>
        <input type="submit" value="탈퇴">
    </form>
</div>
</body>
</html>
