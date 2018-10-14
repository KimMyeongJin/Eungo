package com.eungo.controller.member;

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
import com.eungo.dao.MemberDAO;
import com.eungo.dto.BoardVO;
import com.eungo.dto.MemberVO;
import com.eungo.util.Pagenation;
import com.eungo.util.Script;

public class AdminMemberAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "admin/view-member.jsp";
		String url_back = "account/account.jsp";
		Pagenation page = new Pagenation();
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = new ArrayList<>();
		HttpSession session = request.getSession();		
		String email = (String)session.getAttribute("email");		
		if(email == null) {			
			Script.moving(response, "로그인 해주세요.", url_back);
		}else if(email!=null && email.equals("admin@admin.com")){
			list = dao.select_all(pageNum);			
			int totalNum = dao.number_of_member(); // list에 들어있는 모든 values 수			
			Map<String, Integer> paging = page.pagenation(20, pageNum, totalNum);
			if(paging.keySet().toArray()[0].equals("null")) {
				paging = null;
			}					
			request.setAttribute("paging", paging);		
			request.setAttribute("list", list);

			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		}
	}
}
