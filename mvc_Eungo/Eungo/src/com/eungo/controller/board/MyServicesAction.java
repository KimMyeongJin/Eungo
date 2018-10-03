package com.eungo.controller.board;

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
import com.eungo.dao.BoardDAO;
import com.eungo.dto.BoardVO;
import com.eungo.util.Pagenation;
import com.eungo.util.Script;

public class MyServicesAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "service/my-services.jsp";
		String url_back = "account/account.jsp";
		BoardDAO dao = new BoardDAO();
		Pagenation page = new Pagenation();
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		
		int per_page = Integer.parseInt(request.getParameter("per_page"));	//페이지당 띄우는 자료숫자
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		int total_num = dao.my_servcies_count(email);
		
		if (email != null) {
			List<BoardVO> my_list = new ArrayList<>();
			my_list = dao.my_services_Paging(email, per_page, pageNum);
			Map<String, Integer> paging = page.pagenation(per_page, pageNum, total_num);
			if(paging.keySet().toArray()[0].equals("null")) {
				paging = null;
			}
			
			request.setAttribute("per_page", per_page);
			request.setAttribute("paging", paging);		
			request.setAttribute("my_list", my_list);
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		} else {
			Script.moving(response, "세션이 만료되었습니다.", url_back);
		}
	}
}
