<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="user" class="sub1.UserDTO" >

	<jsp:setProperty property="uid" name="user"/>
	<jsp:setProperty property="name" name="user"/>
	<jsp:setProperty property="age" name="user"/>
	<jsp:setProperty property="addr" name="user"/>

</jsp:useBean>


<html>
	<head>
		<meta charset="UTF-8">
		<title>userProc</title>
	</head>
	<body>
		<h3>전송데이터출력</h3>
		<p>
			아이디 : <%=user.getUid() %><br/>
			이름  : <%=user.getName() %><br/>
			나이  : <%=user.getAge() %><br/>
			주소  : <%=user.getAddr() %><br/>
		</p>
		<a href="../3.useBeanTag.jsp">뒤로가기</a>
	</body>
</html>