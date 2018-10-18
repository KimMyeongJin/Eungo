package com.eungo.controller.reply;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.ReplyDAO;
import com.eungo.dto.ReplyVO;
import com.eungo.util.Script;

public class ViewReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "admin/view-reply.jsp";
		String url_back = "account/account.jsp";

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			Script.moving(response, "로그인 해주세요.", url_back);
		} else if (email.equals("admin@admin.com")) {
			int lnumber = Integer.parseInt(request.getParameter("lnumber"));
			ReplyDAO dao = new ReplyDAO();
			List<ReplyVO> re_list = new ArrayList<>();
			re_list = dao.select_Reply(lnumber);
			if (re_list == null) {
				Script.moving(response, "DB에러");
			} else if (re_list.size() == 0) {
				Script.moving(response, "댓글이 없습니다.");
			} else {
				request.setAttribute("re_list", re_list);

				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);
			}
		}

	}

}
