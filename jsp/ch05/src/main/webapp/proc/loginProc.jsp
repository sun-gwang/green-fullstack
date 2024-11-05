<%@page import="sub1.UserDTO"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	
	String uid  = request.getParameter("uid");
	String pass = request.getParameter("pass");
	String auto = request.getParameter("auto");
	
	// 사용자가 abcd1234 / 1234 일 경우 회원으로 간주
	
	if(uid.equals("abcd1234") && pass.equals("1234")){
		
		// 회원일 경우
		
		// 자동로그인 처리
		if(auto != null){
			Cookie autoCookie = new Cookie("cid",uid);
			autoCookie.setMaxAge(60 * 3);
			autoCookie.setPath("/ch05");
			response.addCookie(autoCookie);
		}
		
		
		// 사용자 생성
		UserDTO user = new UserDTO();
		user.setUid(uid);
		user.setPass(pass);
		user.setName("홍길동");
		user.setAge(23);
		
		// 세션에 기록 (★핵심★)
		session.setAttribute("sessUser", user);
		
		// 이동
		response.sendRedirect("./loginSuccess.jsp");
		
		
	}else {
		
		// 회원이 아닐 경우 (이동)
		response.sendRedirect("../2.Session.jsp?login=fail");
		
	}
%>