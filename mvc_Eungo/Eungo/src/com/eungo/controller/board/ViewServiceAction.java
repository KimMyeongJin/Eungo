package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dao.MemberDAO;
import com.eungo.dao.PriceDAO;
import com.eungo.dto.BoardVO;
import com.eungo.dto.MemberVO;
import com.eungo.dto.PriceVO;
import com.eungo.util.HyphenAdd;

public class ViewServiceAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "service/service.jsp";
		
		BoardDAO dao = new BoardDAO();
		BoardVO board = new BoardVO();		
		MemberDAO mdao = new MemberDAO();
		PriceVO price = new PriceVO();
		PriceDAO pdao = new PriceDAO();
		
		int lnumber = Integer.parseInt(request.getParameter("lnumber"));		
		board = dao.getSelectOne(lnumber);
		price = pdao.selectOne(lnumber);
		String change = board.getLphone_number();		
		board.setLphone_number(HyphenAdd.phone(change));		
		
		MemberVO seller = mdao.select_one(board.getEmail());
		request.setAttribute("price", price);
		request.setAttribute("seller", seller);
		request.setAttribute("board", board);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);		
		
		
		
	}

}
