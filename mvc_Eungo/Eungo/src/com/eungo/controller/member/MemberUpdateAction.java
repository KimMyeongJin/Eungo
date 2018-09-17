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
		
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		
		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();
		member = dao.select_one(email);		
		
		request.setAttribute("member", member);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
				
		
	}
}
