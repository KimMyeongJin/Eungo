package com.eungo.controller.member;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;

public class EmailCheckAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BufferedReader in = request.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		while((line = in.readLine()) != null) {
			sb.append(line);
			System.out.println("ajax data : "+line);
			
		}
		System.out.println("ajax data : "+sb.toString());
		
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.checkEmail(sb.toString());	
		
		
		String data = String.valueOf(result);
		
		if(result != -1) {
			PrintWriter out = response.getWriter();
			out.println(data);
		}
		
	}
	

}
