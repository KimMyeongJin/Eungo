package com.eungo.controller.reply;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.PurchaseDAO;
import com.eungo.dao.ReplyDAO;
import com.eungo.dto.ReplyVO;
import com.google.gson.Gson;

public class ReplyDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BufferedReader in = request.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		while ((line = in.readLine()) != null) {
			sb.append(line);
		}			
				
		ReplyDAO dao = new ReplyDAO();
		int result = dao.reply_del(Integer.parseInt(sb.toString()));		
		String data = String.valueOf(result);
		
		if (result == 1) {
			PrintWriter out = response.getWriter();
			out.println(data);
		}
	}
}
