package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.SHA256;
import com.eungo.util.Script;

public class MemberLoginAction implements Action{
	private static String naming = "MemberLoginAction : ";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";
		
		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();
		
		String email = request.getParameter("email");
		//String password = request.getParameter("password");
		String salt = dao.select_salt(email);
		if(salt == null){
			Script.moving(response, "아이디가 존재하지 않습니다.");
		} 
		String password = SHA256.getEncrypt(request.getParameter("password"), salt);
		member.setEmail(email);
		member.setPassword(password);
		
		
		
		//쿠키저장
		if(request.getParameter("idsave") != null){
			Cookie cookie = new Cookie("cookieID",member.getEmail());
			cookie.setMaxAge(6000);
			response.addCookie(cookie);
		}else{
			Cookie cookie = new Cookie("cookieID",null);
			cookie.setMaxAge(0);
			response.addCookie(cookie); 
		}

		int result = dao.select_email(member);
		if(result == 1){
			HttpSession session = request.getSession();
			session.setAttribute("email", member.getEmail());
			Script.moving(response, "로그인 성공", url);
		}else if(result == 2){
			HttpSession session = request.getSession();
			session.setAttribute("email", member.getEmail());
			Script.moving(response, "미인증 회원입니다. 글쓰기가 제한됩니다.", url);
		}else{
			System.out.println(naming+"sql error");
			Script.moving(response, "비밀번호를 확인하세요.");
		}
	}
}
