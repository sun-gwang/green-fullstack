<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1.스크립트요소</title>
<%--
			날짜 : 2024/01/29
			이름 : 김선광
			내용 : ch02.JSP 기본문법
			
		 --%>
</head>
<body>

	<h3>스크립트 요소</h3>

	<h4>스크립트릿(Scriptlet)</h4>

	<%
	int var1 = 1;
	boolean var2 = true;
	double var3 = 3.14;
	String var4 = "Hello";

	out.println("<p>var1 : " + var1 + "</p>");
	%>

	<h4>표현식(Expression)</h4>

	<p>var3 :<%=var3%></p>
	
	
</body>
</html>