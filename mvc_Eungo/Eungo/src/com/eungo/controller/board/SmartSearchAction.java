package com.eungo.controller.board;

import java.io.IOException;
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

public class SmartSearchAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "service/smart-search-services.jsp";
		
		BoardDAO dao = new BoardDAO();
		Pagenation page = new Pagenation();
		
		String search_text = request.getParameter("search_text");
		String search_category = request.getParameter("search_category");
		int per_page = Integer.parseInt(request.getParameter("per_page"));	//페이지당 띄우는 자료숫자
		int pageNum = Integer.parseInt(request.getParameter("pageNum")); //현재 페이지
		
		int totalNum = dao.smartSearchCount(search_text, search_category); // list에 들어있는 모든 values 수				
		List<BoardVO> list = dao.smart_search(search_text, search_category,per_page,pageNum);
		Map<String, Integer> paging = page.pagenation(per_page, pageNum, totalNum);		
		if(paging.keySet().toArray()[0].equals("null")) {
			paging = null;
		}
		
		
		request.setAttribute("search_text", search_text);
		request.setAttribute("search_category", search_category);
		request.setAttribute("per_page", per_page);
		request.setAttribute("paging", paging);	
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);		
		
		
	}

}
