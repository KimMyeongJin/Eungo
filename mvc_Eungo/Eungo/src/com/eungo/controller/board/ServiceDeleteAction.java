package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;

public class ServiceDeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "index.jsp";
		HttpSession session = request.getSession();
		int lnumber = Integer.parseInt(request.getParameter("lnumber"));		
		BoardDAO dao = new BoardDAO();		
		if(session.getAttribute("email").equals(dao.getSelectOne(lnumber).getEmail())){		
			dao.board_delete(lnumber);
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
	}

}
