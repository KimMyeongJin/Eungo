package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.SHA256;
import com.eungo.util.Script;

public class MemberJoinAction implements Action{
	private static String naming = "MemberJoinAction : ";
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member?cmd=emailSend";
		
		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();
		
		String email = null;
		String password = null;
		String salt = SHA256.generateSalt();
		String phonenumber = null;
		String gender = null;
		String birthday = null;
		
		if(request.getParameter("email") != null) {
			email = request.getParameter("email");
		}
		if(request.getParameter("password") != null) {
			password = request.getParameter("password");
			//패스워드를 SHA256으로 해쉬하기
			password = SHA256.getEncrypt(password, salt);
		}
		if(request.getParameter("phonenumber") != null) {
			phonenumber = request.getParameter("phonenumber");
		}
		if(request.getParameter("gender") != null) {
			gender = request.getParameter("gender");
		}
		if(request.getParameter("birthday") != null) {
			birthday = request.getParameter("birthday");
		}
		
		member.setEmail(email);
		member.setPassword(password);
		member.setSalt(salt);
		member.setPhonenumber(phonenumber);
		member.setGender(gender);
		member.setBirthday(birthday);
		member.setProfile(null);
		
		int result = dao.insert(member);
		
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("email", member.getEmail());
			Script.moving(response, "구글 인증 페이지", url);
		}else if(result == -1) {
			Script.moving(response, "DB에러");
		}
		
		
	}

}
