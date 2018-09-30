package com.eungo.controller.payment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;

public class PaymentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "index.jsp";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		int price = 0;
		System.out.println(request.getAttribute("standard_price"));
		String email = null;
		if (session.getAttribute("email") != null) {
			email = (String) session.getAttribute("email");
			request.getAttribute("standard_price");
		}
	}

}
