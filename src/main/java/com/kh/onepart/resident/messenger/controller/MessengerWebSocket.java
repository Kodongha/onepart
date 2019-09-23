package com.kh.onepart.resident.messenger.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class MessengerWebSocket extends TextWebSocketHandler {

	// private static Map<Integer, List<WebSocketSession>> memberMap = Collections.synchronizedMap(new HashMap<Integer, List<WebSocketSession>>());
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	// after open
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);


		System.out.println(session.getId() + " connection!!");
		System.out.println("sessionList size : " + sessionList.size());
	}

	// sendText
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		for (WebSocketSession sess : sessionList) {
			sess.sendMessage(new TextMessage(session.getId() + " : " + message.getPayload()));
		}
	}

	// after close
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);

		System.out.println(session.getId() + " close!!");
	}
}
