package com.eungo.action;

import com.eungo.controller.member.EmailCheckAction;
import com.eungo.controller.member.EmailSendAction;
import com.eungo.controller.member.MemberJoinAction;

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
		}
		return null;
	}

}
