<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2.Session</title>
		<%--
			날짜 : 2024/02/01
			이름 : 김선광
			내용 : 세션 실습하기
		 --%>
	</head>
	<body>
		<h3>2.세션</h3>
		<form action="./proc/loginProc.jsp" method="post">
			<input type="text" name="uid"><br>
			<input type="text" name="pass"><br>
			<label><input type="checkbox" name="auto" value="1">자동로그인</label>
			<input type="submit" value="로그인"><br>
		</form>
	</body>
</html>