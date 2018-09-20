package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dto.BoardVO;

public class ViewServiceAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "service/service.jsp";
		
		BoardDAO dao = new BoardDAO();
		BoardVO board = new BoardVO();
		int lnumber = Integer.parseInt(request.getParameter("lnumber"));
		
		board = dao.getSelectOne(lnumber);
		
		request.setAttribute("board", board);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);		
		
		
		
	}

}
