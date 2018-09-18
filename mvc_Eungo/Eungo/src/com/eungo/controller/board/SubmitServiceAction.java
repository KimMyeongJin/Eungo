package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dto.BoardVO;

public class SubmitServiceAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "index.jsp";
		
		BoardVO board = new BoardVO();
		BoardDAO dao = new BoardDAO();
		
		request.getParameter("ltitle");
		request.getParameter("lcontent");
		request.getParameter("limage");
		
	}

}
