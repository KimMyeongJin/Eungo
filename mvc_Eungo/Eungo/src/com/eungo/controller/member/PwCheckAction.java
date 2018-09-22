package com.eungo.controller.member;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.util.SHA256;

public class PwCheckAction implements Action{
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
		
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");		
		MemberDAO dao = new MemberDAO();		
		String salt = dao.select_salt(email);
		System.out.println(salt);
		String password = SHA256.getEncrypt(line, salt);
		System.out.println(password);
		int result = dao.checkPassword(password);	
		
		
		String data = String.valueOf(result);
		
		if(result != -1) {
			PrintWriter out = response.getWriter();
			out.println(data);
		}
		
	}
	

}
