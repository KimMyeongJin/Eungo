package com.eungo.controller.reply;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.ReplyDAO;
import com.eungo.util.Script;

public class AdminDeleteReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "board?cmd=view_board&pageNum=1";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else if (email.equals("admin@admin.com")) {
			if (request.getParameterValues("check") == null) {
				Script.moving(response, "체크 해주세요.");
			} else {
				String reply_number[] = request.getParameterValues("check");
				for (int i = 0; i < reply_number.length; i++) {
					ReplyDAO dao = new ReplyDAO();
					int result = dao.reply_del(Integer.parseInt(reply_number[i]));					
					if (result == -1) {
						Script.moving(response, "DB에러", url);
						break;
					}
				}
				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);
			}
		}
	}
}
