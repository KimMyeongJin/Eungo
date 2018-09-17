package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.SHA256;
import com.eungo.util.Script;

public class MemberUpdateProcAction implements Action{ 
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="member?cmd=member_update";
		
		MemberVO member = new MemberVO();
		MemberDAO dao = new MemberDAO();
		
		String email = request.getParameter("email");
		String salt = dao.select_salt(email);
		String password = SHA256.getEncrypt(request.getParameter("password"),salt);
		System.out.println("1");
		member.setEmail(email);
		member.setPassword(password);
		
		int result = dao.update(member);
		if(result == 1) {
			Script.moving(response, "회원정보 수정 완료", url);		
		}else if(result == -1) {
			Script.moving(response, "DB 에러");
		}
	}
}
