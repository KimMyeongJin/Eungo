package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dto.BoardVO;
import com.eungo.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SubmitServiceAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "index.jsp";
		
		String imagePath = request.getServletContext().getRealPath("images/service");
		BoardVO board = new BoardVO();
		BoardDAO dao = new BoardDAO();
		MultipartRequest multi = new MultipartRequest(request,imagePath ,1024*1024*10,"UTF-8",new DefaultFileRenamePolicy());
		
		
		HttpSession session = request.getSession();
		board.setEmail(session.getAttribute("email").toString());		
		board.setLtitle(multi.getParameter("ltitle"));		
		board.setLprice(Integer.parseInt(multi.getParameter("lprice")));
		board.setLcontent(multi.getParameter("lcontent"));
		board.setLcategory(multi.getParameter("lcategory"));
		if(multi.getParameter("limage")!=null) {
			board.setLimage(imagePath+multi.getParameter("limage"));
		}
		if(multi.getParameter("limage2")!=null) {
			board.setLimage(imagePath+multi.getParameter("limage2"));
		}
		if(multi.getParameter("limage3")!=null) {
			board.setLimage(imagePath+multi.getParameter("limage3"));
		}
		if(multi.getParameter("limage4")!=null) {
			board.setLimage(imagePath+multi.getParameter("limage4"));
		}
		board.setYoutube(multi.getParameter("youtube"));
		int result = dao.boardInsert(board);
		if(result ==1 ) {
			Script.moving(response, "서비스를 게시합니다", url);
		}else {
			Script.moving(response, "DB에러");
		}
		
	}

}
