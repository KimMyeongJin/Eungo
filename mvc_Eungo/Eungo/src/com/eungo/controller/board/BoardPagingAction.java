package com.eungo.controller.board;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dto.BoardVO;
import com.eungo.util.Pagenation;

public class BoardPagingAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "service/services.jsp";
		
		Pagenation page = new Pagenation();
		BoardDAO dao = new BoardDAO();
		
		int per_page = Integer.parseInt(request.getParameter("per_page"));	//페이지당 띄우는 자료숫자
		int pageNum = Integer.parseInt(request.getParameter("pageNum")); //현재 페이지
		
		
		int totalNum = dao.boardTotalCount(); // list에 들어있는 모든 values 수
		List<BoardVO> list = dao.boardPaging(per_page,(pageNum - 1) * per_page);
		Map<String, Integer> paging = page.pagenation(per_page, pageNum, totalNum);
		
		request.setAttribute("per_page", per_page);
		request.setAttribute("paging", paging);		
		request.setAttribute("list", list);

		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
	}

}
