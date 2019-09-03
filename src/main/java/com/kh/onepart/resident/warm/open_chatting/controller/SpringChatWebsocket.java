package com.kh.onepart.resident.warm.open_chatting.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatService;

import lombok.extern.java.Log;

@Log
public class SpringChatWebsocket extends TextWebSocketHandler {
	@Autowired
	OpenChatService openChatService;

	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	// 클라이언트와 연결 이후에 실행되는 메서드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);
		log.info(session.getId()+" 연결됨");
	}

	// 클라이언트가 서버로 메시지를 전송했을 때 실행되는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		List<ResidentVO> residentList = openChatService.getResidentList(23);
		System.out.println(residentList);

		log.info(session.getId()+"로 부터 "+message.getPayload()+" 받음");

		// JSON To Java Object
		@SuppressWarnings("unchecked")
		Map<String, Object> msg = new ObjectMapper().readValue(message.getPayload(), HashMap.class);

		if(msg.get("act").equals("getPastData")) {
			// DB에서 이전 대화내용 꺼내서 전달
		}
		else if(msg.get("act").equals("sendMsg")) {
			for (WebSocketSession sess : sessionList) {
				// 보낸사람인지
				msg.put("isMe", sess.equals(session) );
				// 서버 날짜
				msg.put("date", "08/26 11:11");

				// Java Object To JSON
				String resultData = new ObjectMapper().writeValueAsString(msg);

				// 결과 전송
				sess.sendMessage(new TextMessage(resultData));
			}
		}
	}

	// 클라이언트와 연결을 끊었을 때 실행되는 메소드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		log.info(session.getId()+" 연결 끊김 ");
	}
}