package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;

public class MemberLogoutAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "index.jsp";
		
		HttpSession session = request.getSession();
		session.setAttribute("email", null);
		
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);		

	}	
}
