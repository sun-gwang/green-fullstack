<%@page import="sub1.Account"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" info="4.지시자"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>4.지시자</title>
		<%--
			날짜 : 2024/01/29
			이름 : 김선광
			내용 : ch02.JSP 기본문법 지시자
		 --%>
	</head>
	<body>
		<h3>4.지시자</h3>
		<h4>page 지시자</h4>
		
		<p>
			info : <%=getServletInfo() %>
		</p>
		
		<%
			Account kb = new Account("국민은행", "101-12-1001", "김유신", 10000);
			Account wr = new Account("우리은행", "102-22-2001", "김춘추", 20000);
		%>
		<p><%=kb %></p>
		<p><%=wr %></p>
		
		<h4>include 지시자</h4>
		
		<%@ include file = "./Inc/_header.jsp" %> </br>
		<%@ include file = "./Inc/_footer.jsp" %>
	</body>
</html>










