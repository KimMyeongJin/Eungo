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

public class ReplyAnswerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BufferedReader in = request.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		while ((line = in.readLine()) != null) {
			sb.append(line);
		}		
		
		Gson gson = new Gson();
		ReplyVO reply = gson.fromJson(sb.toString(), ReplyVO.class);

		// DB저장				
		ReplyDAO dao = new ReplyDAO();
		int result = dao.insert_Answer(reply);
		reply = dao.select_answer(reply.getReply_number());		
		String data = gson.toJson(reply);

		if (result == 1) {
			PrintWriter out = response.getWriter();
			out.println(data);
		}
	}

}
