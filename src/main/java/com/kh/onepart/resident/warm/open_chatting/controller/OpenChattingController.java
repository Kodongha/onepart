package com.kh.onepart.resident.warm.open_chatting.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatService;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatVO;

@Controller
public class OpenChattingController {
	
	@Autowired
	OpenChatService openChatService;

	@RequestMapping("/resident/menuOpenChatting")
	public String moveOpenChatting() {
		
		
		return "/resident/warm/open_chatting/openChatting";
	}
	
	@RequestMapping("/resident/menuOpenChatRoom")
	public String moveOpenChatRoom() {
		return "/resident/warm/open_chatting/chatRoom";
	}
	
	// 방 만들기
	@RequestMapping(value="/resident/createChatRoom", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String createRoom(OpenChatVO openChatVO, HttpSession session) throws JsonProcessingException {
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginResident");

		Map<String, Object> result = new HashMap<>();
		if(loginResident == null) {
			result.put("result", "failure");
			result.put("msg", "로그인 먼저 ㄱㄱ");
		}else {
			openChatService.createRoom(openChatVO);
			
			result.put("result", "success");
		}

		return new ObjectMapper().writeValueAsString(result);
	}
	
	// 방 목록 전부 가져오기
	@RequestMapping(value="/resident/getRoomListAll", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String getRoomListAll() throws JsonProcessingException {
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		result.put("openChatRoomList", openChatService.getRoomListAll());

		return new ObjectMapper().writeValueAsString(result);

	}
}
