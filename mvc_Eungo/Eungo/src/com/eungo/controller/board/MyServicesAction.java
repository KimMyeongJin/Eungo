package com.eungo.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.BoardDAO;

public class MyServicesAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "service/my-services/jsp";
		BoardDAO dao = new BoardDAO();
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		if (session.getAttribute("email") != null) {
		}
	}
}
