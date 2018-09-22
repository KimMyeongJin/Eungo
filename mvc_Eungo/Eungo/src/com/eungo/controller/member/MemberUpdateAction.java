package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.Script;


public class MemberUpdateAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= "account/user-profile.jsp";
		String login_url = "account/account.jsp";
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		
		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();
		member = dao.select_one(email);	
		if(member.getGender().equals("M")) {
			member.setGender("남자");
		}else if(member.getGender().equals("F")) {
			member.setGender("여자");
		}else if(member.getGender().equals(null)) {
			Script.moving(response, "세션이 만료되었습니다", login_url);
		}
		request.setAttribute("salt", member.getSalt());
		request.setAttribute("member", member);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
				
		
	}
}
