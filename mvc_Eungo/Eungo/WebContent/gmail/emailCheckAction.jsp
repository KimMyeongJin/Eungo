<%@page import="com.eungo.util.Script"%>
<%@page import="com.eungo.util.SHA256"%>
<%@page import="com.eungo.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String url = request.getContextPath()+"/index.jsp";
	MemberDAO dao = new MemberDAO();
	String email = null;
	if(session.getAttribute("email") != null){
		email = (String)session.getAttribute("email");
	}
	
	String code = request.getParameter("code");	
	String salt = dao.select_salt(email);
	String emailHash = SHA256.getEncrypt(email, salt);
	
	System.out.println("email : "+email);
	System.out.println("code : "+code);
	System.out.println("emailHash : "+emailHash);
	
	boolean isTrue = emailHash.equals(code) ? true : false;
	
	if(isTrue){
		int result = dao.update_emailcheck(email);
		if(result == 1){
			Script.moving(response, "인증에 성공하였습니다.", url);
		}else{
			Script.moving(response, "데이터베이스 오류");
		}
	}else{
		Script.moving(response, "인증에 실패하였습니다.");
	}
%>