package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dao.SellerDAO;
import com.eungo.dto.SellerVO;
import com.eungo.util.Script;

public class SubmitLoadAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "service/submit-service.jsp";
		String index_url = "index.jsp";
		
		String phonenumber = null;		
		MemberDAO dao = new MemberDAO();

		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		if (session.getAttribute("email") != null) {			
			phonenumber = dao.select_phonenumber(email);			
			request.setAttribute("phonenumber", phonenumber);			
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		}else {
			Script.moving(response, "세션이 만료되었습니다.", index_url);
		}
	}
}
