package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.SellerDAO;
import com.eungo.dto.SellerVO;
import com.eungo.util.Script;

public class ViewSellerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "admin/view-seller.jsp";
		String url_back = "account/account.jsp";
		SellerDAO dao = new SellerDAO();
		SellerVO seller = new SellerVO();

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		String seller_email = request.getParameter("seller_email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else if (email.equals("admin@admin.com")) {
			seller = dao.select_seller(seller_email);
			if(seller==null) {
				Script.moving(response, "판매자가 아닙니다.");
			}else {
				request.setAttribute("seller", seller);
				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);
			}			
		}
	}
}
