package com.eungo.controller.purchase;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.PurchaseDAO;
import com.eungo.dto.BoardVO;
import com.eungo.dto.PurchaseVO;
import com.eungo.util.Pagenation;
import com.eungo.util.Script;

public class PurchaseListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "account/purchase-list.jsp";
		String url_back = "account/account.jsp";
		String email = null;
		HttpSession session = request.getSession();
		if (session.getAttribute("email") != null) {
			email = (String) session.getAttribute("email");
			
			
			Pagenation page = new Pagenation();
			int pageNum = Integer.parseInt(request.getParameter("pageNum"));
			
			PurchaseDAO pdao = new PurchaseDAO();
			int totalNum = pdao.purchaseTotalCount(email);
			List<BoardVO> board = new ArrayList<>();
			List<PurchaseVO> purchase = new ArrayList<>();
			board = pdao.purchase_columns_in_list(email,pageNum);
			purchase = pdao.purchase_columns_in_purchase(email,pageNum);
			
			Map<String, Integer> paging = page.pagenation(9, pageNum, totalNum);
			if(paging.keySet().toArray()[0].equals("null")) {
				paging = null;
			}
			
			request.setAttribute("paging", paging);
			request.setAttribute("purchase", purchase);
			request.setAttribute("board", board);
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		} else {
			Script.moving(response, "세션이 만료되었습니다", url_back);
		}
	}

}
