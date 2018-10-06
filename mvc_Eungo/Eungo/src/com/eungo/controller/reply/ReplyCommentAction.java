package com.eungo.controller.reply;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dao.PurchaseDAO;
import com.eungo.dao.ReplyDAO;
import com.eungo.dto.ReplyVO;
import com.google.gson.Gson;

public class ReplyCommentAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BufferedReader in = request.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		while((line = in.readLine()) != null) {
			sb.append(line);
		}
		System.out.println("ajax data : "+sb.toString());
		
		Gson gson = new Gson();
		ReplyVO reply = gson.fromJson(sb.toString(), ReplyVO.class);
		
		//DB저장
		BoardDAO bdao = new BoardDAO();
		PurchaseDAO pur_dao = new PurchaseDAO();
		pur_dao.reply_check(reply.getPur_number());
		ReplyDAO dao = new ReplyDAO();
		int lnumber = reply.getLnumber();
		int result = dao.insert_Reply(reply);
		int good = dao.select_star(lnumber);
		int star_insert_result = bdao.good_insert(good, lnumber);
		if(star_insert_result==1) {
			System.out.println("잘들어감");
		}else {
			System.out.println("DB에러남");
		}
		reply = dao.select_Newest(reply.getEmail(),reply.getLnumber());
		String data = gson.toJson(reply);
		
		if(result == 1) {
			PrintWriter out = response.getWriter();
			out.println(data);
		}
	}

}
