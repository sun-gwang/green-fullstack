<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1.useBeanTag</title>
		<%--
			날짜 : 2024/01/31
			이름 : 김선광
			내용 : JSP액션 태그 useBeanTag 실습
		 --%>
	</head>
	<body>
		<h3>3.useBeanTag 액션태그</h3>
		<form action="./proc/userProc.jsp" method="get">
		
			아이디 : <input type="text" name="uid"/><br>
			이름 : <input type="text" name="name"/><br>
			나이 : <input type="text" name="age"/><br>
			주소 : <input type="text" name="addr"/><br>
			<input type="submit" value="전송"/><br>
			
		</form>
		 
	</body>
</html>