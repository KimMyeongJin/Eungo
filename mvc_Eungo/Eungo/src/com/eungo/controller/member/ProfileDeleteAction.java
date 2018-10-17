package com.eungo.controller.member;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.util.Script;

public class ProfileDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url_back = "account/account.jsp";
		BufferedReader in = request.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		while ((line = in.readLine()) != null) {
			sb.append(line);
		}		
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else if (email.equals("admin@admin.com")) {
			int member_number = Integer.parseInt(sb.toString());
			MemberDAO dao = new MemberDAO();
			String profile_name = dao.profile_name(member_number);
			int delete_result = dao.profile_delete(member_number);	
			if(delete_result == 1) {
				File file = new File(request.getServletContext().getRealPath("/images/profile/")+profile_name);	
		        if( file.exists() ){
		            if(file.delete()){
		                System.out.println("파일삭제 성공");
		            }else{
		                System.out.println("파일삭제 실패");
		            }
		        }else{
		            System.out.println("파일이 존재하지 않습니다.");
		        }		             
		    }
			String data = String.valueOf(delete_result);
			PrintWriter out = response.getWriter();			
			out.println(data);
		}
	}
}
