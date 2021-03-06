package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;
import com.eungo.dao.MemberDAO;
import com.eungo.dao.ReplyDAO;
import com.eungo.util.Script;

public class DeleteMemberAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member?cmd=view_member&pageNum=1";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else if (email.equals("admin@admin.com")) {
			MemberDAO dao = new MemberDAO();
			BoardDAO bdao = new BoardDAO();
			ReplyDAO rdao = new ReplyDAO();
			if (request.getParameterValues("check") == null) {
				Script.moving(response, "체크 해주세요.");
			} else {
				String member_number[] = request.getParameterValues("check");
				for (int i = 0; i < member_number.length; i++) {
					String member_email = dao.select_email_by_num(Integer.parseInt(member_number[i]));
					int result = dao.member_delete(member_email);
					int b_result = bdao.board_delete_by_member(member_email);
					int r_result = rdao.reply_del_by_member(member_email);
					if (result == -1 || b_result == -1 || r_result == -1) {
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
