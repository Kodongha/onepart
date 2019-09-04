package com.kh.onepart.resident.warm.open_chatting.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatService;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatVO;

import lombok.extern.java.Log;

@Log
public class SpringChatWebsocket extends TextWebSocketHandler {
	@Autowired
	OpenChatService openChatService;

	private static Map<Integer, List<WebSocketSession>> memberMap = Collections.synchronizedMap(new HashMap<Integer, List<WebSocketSession>>());
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

		// JSON To Java Object
		@SuppressWarnings("unchecked")
		Map<String, Object> msg = new ObjectMapper().readValue(message.getPayload(), HashMap.class);

		if(msg.get("act").equals("getPastData")) {
			// DB에서 이전 대화내용 꺼내서 전달
		}
		else if(msg.get("act").equals("sendMsg")) {
			List<WebSocketSession> roomResidentList = memberMap.get(Integer.parseInt((String)msg.get("openChatSeq")));
			for (WebSocketSession sess : roomResidentList) {
				// 보낸사람인지
				msg.put("isMe", sess.equals(session) );
				// 서버 날짜
				Date date = new Date();
				SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd HH:mm");
				String nowTime2 = dateFormat.format(date);
				msg.put("date", nowTime2);

				// Java Object To JSON
				String resultData = new ObjectMapper().writeValueAsString(msg);

				// 결과 전송
				sess.sendMessage(new TextMessage(resultData));
			}
		}else if(msg.get("act").equals("enterRoom")) {

			// 웹소켓 접속중인 채팅자 추가
			List<WebSocketSession> roomResidentList = memberMap.get(Integer.parseInt((String)msg.get("openChatSeq")));
			if(roomResidentList == null) {
				roomResidentList = new ArrayList<WebSocketSession>();
			}else {
				roomResidentList.add(session);
			}

			memberMap.put(Integer.parseInt((String)msg.get("openChatSeq")), roomResidentList);
		}
	}

	// 클라이언트와 연결을 끊었을 때 실행되는 메소드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

		// 채팅 참가한 모든 방에서 세션 나가기
		List<OpenChatVO> residentList = openChatService.getRoomListAll();
		for (OpenChatVO openChatVO : residentList) {
			int openChatSeq = openChatVO.getOpenChatSeq();
			List<WebSocketSession> sessList = memberMap.get(openChatSeq);
			sessList.remove(session);
//			for (WebSocketSession sess : sessList) {
//				if(sess.equals(session)) {
//					sessList.remove(session);
//				}
//			}
		}


		sessionList.remove(session);
		log.info(session.getId()+" 연결 끊김 ");
	}
}