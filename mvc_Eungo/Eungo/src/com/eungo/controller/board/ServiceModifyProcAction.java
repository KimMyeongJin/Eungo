package com.eungo.controller.board;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dao.PriceDAO;
import com.eungo.dto.BoardVO;
import com.eungo.dto.PriceVO;
import com.eungo.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ServiceModifyProcAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String url = "index.jsp";		
		
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		//String imagePath = request.getServletContext().getRealPath("/images/service/"); //aws등록시 사용
		//String imagePath = "C:/Users/it/Documents/Eungo/mvc_Eungo/Eungo/WebContent/images/service/"; //학원 path
		String imagePath = "C:/Users/SMK/Documents/Eungo/mvc_Eungo/Eungo/WebContent/images/service/"; //집에서 path		
		BoardVO board = new BoardVO();
		BoardDAO dao = new BoardDAO();
		PriceVO price = new PriceVO();
		PriceDAO pdao = new PriceDAO();
		MultipartRequest multi = new MultipartRequest(request,imagePath ,1024*1024*10,"UTF-8",new DefaultFileRenamePolicy());
		Enumeration<?> files = multi.getFileNames();				
	    String file1 = (String)files.nextElement();
	    String file2 = (String)files.nextElement();
	    String file3 = (String)files.nextElement();	   
	    String file4 = (String)files.nextElement();
	    
	    String limage =multi.getFilesystemName(file1);
	    String limage2=multi.getFilesystemName(file2);
	    String limage3=multi.getFilesystemName(file3);
	    String limage4=multi.getFilesystemName(file4);		
		
		board.setEmail(email);		
		board.setLtitle(multi.getParameter("ltitle"));				
		board.setLcontent(multi.getParameter("lcontent"));
		board.setStandard_price(String.format("%,d", Integer.parseInt(multi.getParameter("standard_price"))));
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
		board.setCancel_rule(multi.getParameter("cancel_rule").replace("\r\n", "<br>"));
		
		int lnumber = dao.lnumberSelect(email);
		
		board.setLnumber(lnumber);
		int result = dao.boardModify(board);
		if(lnumber!=-1) {
			price.setLnumber(lnumber);
			price.setStandard_price(String.format("%,d", Integer.parseInt(multi.getParameter("standard_price"))));
			price.setStandard_title(multi.getParameter("standard_title"));
			price.setStandard_content(multi.getParameter("standard_content"));
			price.setStandard_modify(Integer.parseInt(multi.getParameter("standard_modify")));
			price.setStandard_time(multi.getParameter("standard_time"));	
			price.setDeluxe_price(String.format("%,d", Integer.parseInt(multi.getParameter("deluxe_price"))));
			price.setDeluxe_title(multi.getParameter("deluxe_title"));
			price.setDeluxe_content(multi.getParameter("deluxe_content"));
			price.setDeluxe_modify(Integer.parseInt(multi.getParameter("deluxe_modify")));
			price.setDeluxe_time(multi.getParameter("deluxe_time"));	
			price.setPremium_price(String.format("%,d", Integer.parseInt(multi.getParameter("premium_price"))));
			price.setPremium_title(multi.getParameter("premium_title"));
			price.setPremium_content(multi.getParameter("premium_content"));
			price.setPremium_modify(Integer.parseInt(multi.getParameter("premium_modify")));
			price.setPremium_time(multi.getParameter("premium_time"));	
		}
		int p_result = pdao.modify(price);
		
		if(result ==1&&p_result==1) {
			Script.moving(response, "서비스를 게시합니다", url);
		}else {
			Script.moving(response, "DB에러");
		}
	}

}
