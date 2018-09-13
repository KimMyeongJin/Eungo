package com.eungo.action;

import com.eungo.controller.board.BoardSearchAction;
import com.eungo.controller.board.SearchCategoryAction;
import com.eungo.controller.member.EmailCheckAction;
import com.eungo.controller.member.EmailSendAction;
import com.eungo.controller.member.MemberJoinAction;
import com.eungo.controller.member.MemberLoginAction;
import com.eungo.controller.member.NaverLoginAction;

public class ActionFactory {
	private static String naming = "ActionFactory : ";

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String cmd) {
		if(cmd.equals("member_join")) {			
			return new MemberJoinAction();			
		}else if(cmd.equals("emailSend")) {
			return new EmailSendAction();
		}else if(cmd.equals("member_emailcheck")) {
			return new EmailCheckAction();
		}else if(cmd.equals("search_category")) {
			return new SearchCategoryAction();
		}else if(cmd.equals("member_login")) {
			return new MemberLoginAction();
		}else if(cmd.equals("naver_email")) {
			return new NaverLoginAction();
		}else if(cmd.equals("board_search")) {
			return new BoardSearchAction();
		}
		return null;
	}

}
