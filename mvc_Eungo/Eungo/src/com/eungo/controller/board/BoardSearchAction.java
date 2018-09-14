package com.eungo.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dto.BoardVO;

public class BoardSearchAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url ="properties.jsp";
		
		String search_text = request.getParameter("search_text");		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.search(search_text);
		
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);		
	}
}
