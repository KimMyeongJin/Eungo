package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dao.PriceDAO;
import com.eungo.dto.BoardVO;
import com.eungo.dto.PriceVO;

public class ServiceModifyAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "service/service-modify.jsp";
		int lnumber = Integer.parseInt(request.getParameter("lnumber"));
		BoardDAO dao = new BoardDAO();
		BoardVO board = new BoardVO();
		PriceDAO pdao = new PriceDAO();
		PriceVO price = new PriceVO();
		
		board = dao.getSelectOne(lnumber);
		board.setCancel_rule(dao.getSelectOne(lnumber).getCancel_rule().replace("<br>", "\r\n"));
		price = pdao.selectOne(lnumber);
		
		request.setAttribute("price", price);
		request.setAttribute("board", board);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
		
		
		
		
	}

}
