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
import com.eungo.dto.MemberVO;
import com.eungo.util.Pagenation;
import com.eungo.util.Script;

public class SearchMemberAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "admin/search-member.jsp";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else {
			String search_text = request.getParameter("search_text");
			if (search_text == null || search_text.equals("")) {
				Script.moving(response, "검색어를 입력해주세요.");
			} else {
				MemberDAO dao = new MemberDAO();
				int pageNum = Integer.parseInt(request.getParameter("pageNum"));
				List<MemberVO> list = new ArrayList<>();
				list = dao.search_member(search_text, pageNum);
				int totalNum = dao.search_member_count(search_text);

				Pagenation page = new Pagenation();
				Map<String, Integer> paging = page.pagenation(20, pageNum, totalNum);
				if (paging.keySet().toArray()[0].equals("null")) {
					paging = null;
				}

				request.setAttribute("search_text", search_text);
				request.setAttribute("paging", paging);
				request.setAttribute("list", list);

				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);
			}
		}
	}
}
