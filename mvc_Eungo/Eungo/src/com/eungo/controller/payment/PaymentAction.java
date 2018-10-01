package com.eungo.controller.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;

public class PaymentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "payment/payment.jsp";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		String standard_price = null;
		String deluxe_price = null;
		String premium_price = null;		
		if (session.getAttribute("email") != null) {			
			standard_price = request.getParameter("standard_price");
			deluxe_price = request.getParameter("deluxe_price");
			premium_price = request.getParameter("premium_price");
			System.out.println(standard_price);
			System.out.println(deluxe_price);
			System.out.println(premium_price);
			request.setAttribute("standard_price", standard_price);
			if (deluxe_price != null) {
				request.setAttribute("deluxe_price", deluxe_price);
			}
			if (premium_price != null) {
				request.setAttribute("premium_price", premium_price);
			}
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		} else {
			RequestDispatcher dis = request.getRequestDispatcher(url_back);
			dis.forward(request, response);
		}
	}
}
