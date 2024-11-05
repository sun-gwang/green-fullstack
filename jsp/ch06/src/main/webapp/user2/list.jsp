<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.User2DTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	String user = "kc5353";
	String pass = "abcd1234";
	
	List<User2DTO> users = new ArrayList<>();
	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM `User2`");
		
		while(rs.next()){
			User2DTO dto = new User2DTO();
			dto.setUid(rs.getString(1));
			dto.setName(rs.getString(2));
			dto.setBirth(rs.getString(3));
			dto.setAddr(rs.getString(4));
			
			users.add(dto);
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}


%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>User2 ::list</title>
	</head>
	<body>
		<h3>User2 목록</h3>
		<a href="../1.Jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>주소</th>
				<th>관리</th>
			</tr>
				<%for(User2DTO user2 : users){ %>
			<tr>
				<td><%= user2.getUid() %></td>
				<td><%= user2.getName() %></td>
				<td><%= user2.getBirth()%></td>
				<td><%= user2.getAddr() %></td>
				<td>
					<a href="./modify.jsp?uid=<%= user2.getUid() %>">수정</a>
					<a href="./delete.jsp?uid=<%= user2.getUid() %>">삭제</a>
				</td>
			</tr>
			<%} %>
		</table>
	</body>
</html>