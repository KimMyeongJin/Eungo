package com.eungo.controller.board;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Enumeration;

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
		
		String imagePath = "C:/Users/it/Documents/Eungo/mvc_Eungo/Eungo/WebContent/images/service/";
		BoardVO board = new BoardVO();
		BoardDAO dao = new BoardDAO();
		DecimalFormat df = new DecimalFormat("###,###");
		MultipartRequest multi = new MultipartRequest(request,imagePath ,1024*1024*10,"UTF-8",new DefaultFileRenamePolicy());
		Enumeration<?> files = multi.getFileNames();				
	    String file1 = (String)files.nextElement();	   
	    String file2 = (String)files.nextElement();
	    String file3 = (String)files.nextElement();	   
	    String file4 = (String)files.nextElement();
	    
	    String limage = multi.getFilesystemName(file1);
	    String limage2=multi.getFilesystemName(file2);
	    String limage3=multi.getFilesystemName(file3);
	    String limage4=multi.getFilesystemName(file4);
		
		HttpSession session = request.getSession();
		board.setEmail(session.getAttribute("email").toString());		
		board.setLtitle(multi.getParameter("ltitle"));		
		board.setLprice(df.format(Integer.parseInt(multi.getParameter("lprice"))));
		board.setLcontent(multi.getParameter("lcontent"));
		board.setLcategory(multi.getParameter("lcategory"));
		if(limage!=null) {
			board.setLimage("/Eungo/images/service/"+limage);
		}
		if(limage2!=null) {
			board.setLimage2("/Eungo/images/service/"+limage2);
		}
		if(limage3!=null) {
			board.setLimage3("/Eungo/images/service/"+limage3);
		}
		if(limage4!=null) {
			board.setLimage4("/Eungo/images/service/"+limage4);
		}
		board.setYoutube(multi.getParameter("youtube"));
		board.setLphone_number(multi.getParameter("lphone_number"));
		int result = dao.boardInsert(board);
		if(result ==1 ) {
			Script.moving(response, "서비스를 게시합니다", url);
		}else {
			Script.moving(response, "DB에러");
		}
		
	}

}
