package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dao.ReplyDAO;
import com.eungo.util.Script;

public class DeleteBoardAction implements Action {

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
			BoardDAO dao = new BoardDAO();
			ReplyDAO rdao = new ReplyDAO();
			if (request.getParameterValues("check") == null) {
				Script.moving(response, "체크 해주세요.");
			} else {
				String lnumber[] = request.getParameterValues("check");
				for (int i = 0; i < lnumber.length; i++) {
					int result = dao.board_delete(Integer.parseInt(lnumber[i]));
					int r_result = rdao.reply_del_by_board(Integer.parseInt(lnumber[i]));
					if (result == -1 || r_result == -1) {
						Script.moving(response, "DB에러.");
						break;
					}
				}
				
				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);
			}
		}
	}

}
