package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;

public class DeleteMemberAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member?cmd=view_member&pageNum=1";
		MemberDAO dao = new MemberDAO();
		String member_number[] = request.getParameterValues("check");
		System.out.println(member_number[0]);
		System.out.println(member_number[1]);
		
	}

}
