package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dao.SellerDAO;
import com.eungo.dto.SellerVO;
import com.eungo.util.Script;

public class SellerRegisterProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";

		SellerVO seller = new SellerVO();
		SellerDAO dao = new SellerDAO();

		String email = null;
		int bank_code_std = 0;
		String bank_name = null;
		long account_num = 0;
		int account_holder_info = 0;
		String seller_intro = null;

		if (request.getParameter("email") != null) {
			email = request.getParameter("email");
		}
		if (request.getParameter("bank_code_std") != null) {
			String bank_code_std_split[] = request.getParameter("bank_code_std").split("=");
			bank_name = bank_code_std_split[1];
			bank_code_std = Integer.parseInt(bank_code_std_split[0]);
		}
		if (request.getParameter("account_num") != null) {
			account_num = Long.parseLong(request.getParameter("account_num"));
		}
		if (request.getParameter("account_holder_info") != null) {
			String birthday = request.getParameter("account_holder_info");
			birthday = birthday.replaceAll("-", " ");
			birthday = birthday.replaceAll(" ", "");
			account_holder_info = Integer.parseInt(birthday);
		}
		if (request.getParameter("seller_intro") != null) {
			seller_intro = request.getParameter("seller_intro");
		}

		seller.setEmail(email);
		seller.setBank_code_std(bank_code_std);
		seller.setBank_name(bank_name);
		seller.setAccount_num(account_num);
		seller.setAccount_holder_info(account_holder_info);
		seller.setSeller_intro(seller_intro);

		int result = dao.insert(seller);

		if (result == 1) {
			MemberDAO mdao = new MemberDAO();
			int upResult = mdao.update_seller(email);
			boolean dis_seller = mdao.discriminate_seller(email);
			if (upResult == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("seller", dis_seller);
				Script.moving(response, "판매자 등록이 완료되었습니다.", url);
			} else if (upResult == -1) {
				Script.moving(response, "DB에러");
			}
		} else if (result == -1) {
			Script.moving(response, "DB에러");
		}
	}
}
