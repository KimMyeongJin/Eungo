package com.eungo.action;

import com.eungo.controller.board.BoardPagingAction;
import com.eungo.controller.board.BoardSearchAction;
import com.eungo.controller.board.IndexBoardAction;
import com.eungo.controller.board.MyServicesAction;
import com.eungo.controller.board.ServiceDeleteAction;
import com.eungo.controller.board.ServiceModifyAction;
import com.eungo.controller.board.ServiceModifyProcAction;
import com.eungo.controller.board.SmartSearchAction;
import com.eungo.controller.board.SubmitLoadAction;
import com.eungo.controller.board.SubmitServiceAction;
import com.eungo.controller.board.ViewServiceAction;
import com.eungo.controller.member.AdminMemberAction;
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
import com.eungo.controller.member.PwCheckAction;
import com.eungo.controller.member.SellerRegisterAction;
import com.eungo.controller.member.SellerRegisterProcAction;
import com.eungo.controller.member.ViewSellerAction;
import com.eungo.controller.purchase.PurchaseAction;
import com.eungo.controller.purchase.PurchaseCompleteAction;
import com.eungo.controller.purchase.PurchaseFinishAction;
import com.eungo.controller.purchase.PurchaseListAction;
import com.eungo.controller.reply.AnswerDeleteAction;
import com.eungo.controller.reply.ReplyAnswerAction;
import com.eungo.controller.reply.ReplyCommentAction;
import com.eungo.controller.reply.ReplyDeleteAction;

public class ActionFactory {
	private static String naming = "ActionFactory : ";

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String cmd) {
		if (cmd.equals("index_board")) {
			return new IndexBoardAction();
		} else if (cmd.equals("member_join")) {
			return new MemberJoinAction();
		} else if (cmd.equals("emailSend")) {
			return new EmailSendAction();
		} else if (cmd.equals("member_emailcheck")) {
			return new EmailCheckAction();
		} else if (cmd.equals("member_pwcheck")) {
			return new PwCheckAction();
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
		} else if (cmd.equals("submit_load")) {
			return new SubmitLoadAction();
		} else if (cmd.equals("submit_service")) {
			return new SubmitServiceAction();
		} else if (cmd.equals("view_service")) {
			return new ViewServiceAction();
		} else if (cmd.equals("service_delete")) {
			return new ServiceDeleteAction();
		} else if (cmd.equals("service_modify")) {
			return new ServiceModifyAction();
		} else if (cmd.equals("service_modify_proc")) {
			return new ServiceModifyProcAction();
		} else if (cmd.equals("reply_comment")) {
			return new ReplyCommentAction();
		} else if (cmd.equals("reply_delete")) {
			return new ReplyDeleteAction();
		} else if (cmd.equals("reply_answer")) {
			return new ReplyAnswerAction();
		} else if (cmd.equals("answer_delete")) {
			return new AnswerDeleteAction();
		} else if (cmd.equals("purchase")) {
			return new PurchaseAction();
		} else if (cmd.equals("my_services")) {
			return new MyServicesAction();
		} else if (cmd.equals("seller_register")) {
			return new SellerRegisterAction();
		} else if (cmd.equals("seller_registerProc")) {
			return new SellerRegisterProcAction();
		} else if (cmd.equals("purchase_complete")) {
			return new PurchaseCompleteAction();
		} else if (cmd.equals("purchase_finish")) {
			return new PurchaseFinishAction();
		} else if (cmd.equals("purchase_list")) {
			return new PurchaseListAction();
		} else if (cmd.equals("view_member")) {
			return new AdminMemberAction();
		} else if (cmd.equals("view_seller")) {
			return new ViewSellerAction();
		}
		return null;
	}
}
