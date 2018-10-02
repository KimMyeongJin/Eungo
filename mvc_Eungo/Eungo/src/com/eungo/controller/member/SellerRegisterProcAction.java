package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dao.SellerDAO;
import com.eungo.dto.SellerVO;
import com.eungo.util.Script;

public class SellerRegisterProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";
		
		SellerVO seller = new SellerVO();
		SellerDAO dao = new SellerDAO();
		
		String email = null;
		int bank_code_std = 0;
		int account_num = 0;
		int account_holder_info = 0;		
		String seller_intro = null;
		
		if(request.getParameter("email") != null) {
			email = request.getParameter("email");
		}
		if(request.getParameter("bank_code_std") != null) {
			bank_code_std = Integer.parseInt(request.getParameter("bank_code_std"));
		}
		if(request.getParameter("account_num") != null) {
			account_num = Integer.parseInt(request.getParameter("account_num"));
		}
		if(request.getParameter("account_holder_info") != null) {
			String birthday = request.getParameter("account_holder_info");
			birthday = birthday.replaceAll("-", " ");
			birthday = birthday.replaceAll(" ", "");
			account_holder_info = Integer.parseInt(birthday);
		}
		if(request.getParameter("seller_intro") != null) {
			email = request.getParameter("seller_intro");
		}
		
		seller.setEmail(email);
		seller.setBank_code_std(bank_code_std);
		seller.setAccount_num(account_num);
		seller.setAccount_holder_info(account_holder_info);
		seller.setSeller_intro(seller_intro);
		
		int result = dao.insert(seller);
		
		if(result == 1) {
			MemberDAO mdao = new MemberDAO();
			int upResult = mdao.update_seller(email);
			if(upResult == 1) {
				Script.moving(response, "판매자 등록이 완료되었습니다.", url);
			}else if(upResult == -1) {
				Script.moving(response, "DB에러");
			}			
		}else if(result == -1) {
			Script.moving(response, "DB에러");
		}
		
		

		
	}

}