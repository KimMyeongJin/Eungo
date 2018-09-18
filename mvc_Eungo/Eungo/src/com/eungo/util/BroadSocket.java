package com.eungo.util;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/broadCasting") //소켓통신할때 찾는 주소
public class BroadSocket {
	private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());
	
	public static void serverMessage(String message) throws IOException{
		for(Session client : clients) {
			client.getBasicRemote().sendText(message);		
		}
	}
	
	//접속
	@OnOpen //이거 걸어놓으면 클라이언트가 접속하자마자 호출
	public void onOpen(Session session) {
		System.out.println("onOpen 호출");
		clients.add(session); //session에 response 정보가 담겨있음
	}
	
	//서버
	@OnMessage
	public void onMessage(String message, Session session) throws IOException{
		System.out.println("onMessage 호출");
		System.out.println("message : " + message);
		synchronized (clients) {
			for(Session client : clients) {
				if(!client.equals(session)) {
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}
	
	//종료
	@OnClose
	public void onClose(Session session) {
		System.out.println("onClose 호출");
		clients.remove(session);
	}
}

