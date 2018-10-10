package com.eungo.controller.purchase;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.PurchaseDAO;
import com.eungo.dao.SellerDAO;
import com.eungo.dto.PurchaseVO;
import com.eungo.dto.SellerVO;
import com.google.gson.Gson;

public class PurchaseCompleteAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();		
		String email = (String)session.getAttribute("email");	//구매자 이메일	
		//판매자 이메일 따로 받아와야되고
		BufferedReader in = request.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		while((line = in.readLine()) != null) {
			sb.append(line);
			System.out.println("ajax data : "+line);
			
		}
		String data = sb.toString();
		
		Gson gson = new Gson();
		PurchaseVO purchase = gson.fromJson(data, PurchaseVO.class);
		purchase.setEmail(email);
		PurchaseDAO dao = new PurchaseDAO();
		SellerDAO sdao = new SellerDAO();
		SellerVO seller = new SellerVO();
		String seller_email = purchase.getSeller_email();
		int income = 0;
		if(sdao.select_income(seller_email) != -1) {
			income = Integer.parseInt(purchase.getTotal_price()) + sdao.select_income(seller_email);
		}
		
		seller.setIncome(income);
		seller.setEmail(seller_email);
		
		int seller_result = sdao.update_income(seller);
		int result = dao.insert(purchase);
		
		PrintWriter out = response.getWriter();
		if(result == 1 && seller_result == 1) {			
			out.println("success");
		}else {
			out.println("error");
		}		
	}
}
