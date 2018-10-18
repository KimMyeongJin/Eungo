package com.eungo.controller.board;

import java.io.IOException;
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

public class ViewBoardAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "admin/view-board.jsp";
		String url_back = "account/account.jsp";
		
		Pagenation page = new Pagenation();
		BoardDAO dao = new BoardDAO();

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else if (email.equals("admin@admin.com")) {
			int pageNum = Integer.parseInt(request.getParameter("pageNum")); // 현재 페이지
			int totalNum = dao.boardTotalCount(); // list에 들어있는 모든 values 수
			List<BoardVO> list = dao.boardPaging(20, pageNum);
			Map<String, Integer> paging = page.pagenation(20, pageNum, totalNum);
			if (paging.keySet().toArray()[0].equals("null")) {
				paging = null;
			}

			request.setAttribute("paging", paging);
			request.setAttribute("list", list);

			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		}
	}

}
