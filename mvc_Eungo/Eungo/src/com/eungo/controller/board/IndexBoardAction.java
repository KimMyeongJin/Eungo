package com.eungo.controller.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dto.BoardVO;

public class IndexBoardAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "home.jsp";
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> new_list = new ArrayList<>();
		List<BoardVO> top_three = new ArrayList<>();
		new_list = dao.new_seven();
		top_three = dao.top_three();
		
		request.setAttribute("new_list", new_list);		
		request.setAttribute("top_three", top_three);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
	}

}
