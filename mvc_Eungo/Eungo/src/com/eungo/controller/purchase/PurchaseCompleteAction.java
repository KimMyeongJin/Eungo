package com.eungo.controller.purchase;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.script.ScriptEngineManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.PurchaseDAO;
import com.eungo.dto.PurchaseVO;
import com.eungo.util.Script;
import com.google.gson.Gson;

public class PurchaseCompleteAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();		
		String email = (String)session.getAttribute("email");		
		
		BufferedReader in = request.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		while((line = in.readLine()) != null) {
			sb.append(line);
			System.out.println("ajax data : "+line);
			
		}
		String data = sb.toString();
		
		Gson gson = new Gson();
		PurchaseVO purchase = gson.fromJson(data, PurchaseVO.class);
		PurchaseDAO dao = new PurchaseDAO();		
		
		purchase.setEmail(email);
		
		int result = dao.insert(purchase);
		PrintWriter out = response.getWriter();
		if(result == 1) {			
			out.println("success");
		}else {
			out.println("error");
		}
		
	}

}
