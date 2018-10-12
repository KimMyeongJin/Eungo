<%@page import="com.eungo.util.Script"%>
<%@page import="com.eungo.util.SHA256"%>
<%@page import="com.eungo.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String url = request.getContextPath()+"/index.jsp";
	MemberDAO dao = new MemberDAO();
	String email = request.getParameter("email");
	//System.out.println("email : "+email);
	
	String code = request.getParameter("code");	
	String salt = dao.select_salt(email);
	String emailHash = SHA256.getEncrypt(email, salt);
	
	/* System.out.println("email : "+email);
	System.out.println("code : "+code);
	System.out.println("emailHash : "+emailHash); */
	
	boolean isTrue = emailHash.equals(code) ? true : false;
	
	if(isTrue){
		int result = dao.update_emailcheck(email);		
		
		if(result == 1){
			if(session.getAttribute("email") != null){
				if(session.getAttribute("email").equals(email)){
					Script.moving(response, "인증에 성공하였습니다.", url);	
				}else if(session.getAttribute("email") != null){
					Script.moving(response, email+"회원님의 인증에 성공하였습니다. 해당 계정으로 로그인하여 확인해주세요.", url);				
				}
			}else{
				url = request.getContextPath()+"/account/account.jsp";
				Script.moving(response, email+"회원님의 인증에 성공하였습니다. 로그인해주세요.", url);				
			}
			
		}else{
			Script.moving(response, "데이터베이스 오류");
		}	
		
	}else{
		Script.moving(response, "인증에 실패하였습니다.");
	}
%>