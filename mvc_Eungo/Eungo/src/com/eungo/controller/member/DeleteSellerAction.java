package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dao.SellerDAO;
import com.eungo.util.Script;

public class DeleteSellerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member?cmd=view_member&pageNum=1";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else if (email.equals("admin@admin.com")) {
			SellerDAO dao = new SellerDAO();
			MemberDAO mdao = new MemberDAO();
			String seller_email = request.getParameter("check");
			int result = dao.delete_seller(seller_email);
			int m_result = mdao.re_update_seller(seller_email);
			if (result == -1 || m_result == -1) {
				Script.moving(response, "DB에러", url);
			} else {
				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);
			}
		}
	}
}
