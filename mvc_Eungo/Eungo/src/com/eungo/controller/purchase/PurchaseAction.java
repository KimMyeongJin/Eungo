package com.eungo.controller.purchase;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.BoardVO;
import com.eungo.dto.MemberVO;

public class PurchaseAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "purchase/purchase.jsp";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		BoardDAO dao = new BoardDAO();
		BoardVO board = new BoardVO();
		MemberDAO mdao = new MemberDAO();
		MemberVO seller = new MemberVO();
		String standard_price = null;
		String standard_title = null;
		String standard_time = null;
		String deluxe_price = null;
		String deluxe_title = null;
		String deluxe_time = null;
		String premium_price = null;
		String premium_title = null;
		String premium_time = null;
		int lnumber = 0;
		String email = null;
		if (session.getAttribute("email") != null) {
			lnumber = Integer.parseInt(request.getParameter("lnumber"));
			request.setAttribute("lnumber", lnumber);
			board = dao.getSelectOne(lnumber);
			email = request.getParameter("email");
			seller = mdao.select_one(email);
			standard_price = request.getParameter("standard_price");
			standard_title = request.getParameter("standard_title");
			standard_time = request.getParameter("standard_time");
			deluxe_price = request.getParameter("deluxe_price");
			deluxe_title = request.getParameter("deluxe_title");
			deluxe_time = request.getParameter("deluxe_time");
			premium_price = request.getParameter("premium_price");
			premium_title = request.getParameter("premium_title");
			premium_time = request.getParameter("premium_time");
			
			if (standard_price != null) {
				request.setAttribute("price", standard_price);
				request.setAttribute("price_title", standard_title);
				request.setAttribute("price_time", standard_time);
				request.setAttribute("board", board);
				request.setAttribute("seller", seller);				
				int amount = Integer.parseInt(standard_price.replaceAll(",", ""));
				request.setAttribute("amount", amount);
			}
			if (deluxe_price != null) {
				request.setAttribute("price", deluxe_price);
				request.setAttribute("price_title", deluxe_title);
				request.setAttribute("price_time", deluxe_time);
				request.setAttribute("board", board);
				request.setAttribute("seller", seller);
				int amount = Integer.parseInt(deluxe_price.replaceAll(",", ""));
				request.setAttribute("amount", amount);
			}
			if (premium_price != null) {
				request.setAttribute("price", premium_price);
				request.setAttribute("price_title", premium_title);
				request.setAttribute("price_time", premium_time);
				request.setAttribute("board", board);
				request.setAttribute("seller", seller);
				int amount = Integer.parseInt(premium_price.replaceAll(",", ""));
				request.setAttribute("amount", amount);
			}
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		} else {
			RequestDispatcher dis = request.getRequestDispatcher(url_back);
			dis.forward(request, response);
		}
	}
}
