package com.eungo.controller.purchase;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.PurchaseDAO;
import com.eungo.dto.PurchaseVO;

public class PurchaseFinishAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "purchase/purchase-finish.jsp";

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");

		PurchaseDAO dao = new PurchaseDAO();

		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			System.out.println(e.getMessage());
		}

		PurchaseVO purchase = dao.select(email);

		request.setAttribute("purchase", purchase);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);

	}

}
