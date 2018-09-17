package com.eungo.action;

import com.eungo.controller.board.BoardPagingAction;
import com.eungo.controller.board.BoardSearchAction;
import com.eungo.controller.board.SmartSearchAction;
import com.eungo.controller.member.ApiConnectAction;
import com.eungo.controller.member.EmailCheckAction;
import com.eungo.controller.member.EmailSendAction;
import com.eungo.controller.member.MemberJoinAction;
import com.eungo.controller.member.MemberLoginAction;
import com.eungo.controller.member.MemberLogoutAction;
import com.eungo.controller.member.MemberUpdateAction;
import com.eungo.controller.member.MemberUpdateProcAction;
import com.eungo.controller.member.NaverCallBackAction;
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
		if (cmd.equals("member_join")) {
			return new MemberJoinAction();
		} else if (cmd.equals("emailSend")) {
			return new EmailSendAction();
		} else if (cmd.equals("member_emailcheck")) {
			return new EmailCheckAction();
		} else if (cmd.equals("smart_search")) {
			return new SmartSearchAction();
		} else if (cmd.equals("member_login")) {
			return new MemberLoginAction();
		} else if (cmd.equals("member_logout")) {
			return new MemberLogoutAction();
		} else if (cmd.equals("naver_login")) {
			return new ApiConnectAction();
		} else if (cmd.equals("naver_callback")) {
			return new NaverCallBackAction();
		} else if (cmd.equals("naver_email")) {
			return new NaverLoginAction();
		} else if (cmd.equals("board_search")) {
			return new BoardSearchAction();
		} else if (cmd.equals("board_paging")) {
			return new BoardPagingAction();
		} else if (cmd.equals("member_update")) {
			return new MemberUpdateAction();
		} else if (cmd.equals("member_updateProc")) {
			return new MemberUpdateProcAction();
		}
		return null;
	}
}
