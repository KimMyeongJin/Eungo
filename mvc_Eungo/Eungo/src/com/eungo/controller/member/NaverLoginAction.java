package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.Script;

public class NaverLoginAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="member?cmd=naver_email";
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();

		int result = dao.insert_naveremail(member);
		
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("email", member.getEmail());
		}else if(result == -1) {
			Script.moving(response, "DB에러");
		}
	
	}

}
