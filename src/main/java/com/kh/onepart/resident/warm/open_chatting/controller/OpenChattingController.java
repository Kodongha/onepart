package com.kh.onepart.resident.warm.open_chatting.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatMemberService;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatService;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatVO;

@Controller
public class OpenChattingController {

	@Autowired
	OpenChatService openChatService;

	@Autowired
	OpenChatMemberService openChatMemberService;

	// 채팅방 목록 페이지 이동
	@RequestMapping("/resident/menuOpenChatting")
	public String moveOpenChatting() {


		return "/resident/warm/open_chatting/openChatting";
	}

	// 채팅방 참여
	@RequestMapping("/resident/menuOpenChatRoom/{openChatSeq}")
	public String moveOpenChatRoom(@PathVariable("openChatSeq") int openChatSeq, HttpSession session) {
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginResident");

		if(loginResident != null) {
			int residentSeq = loginResident.getResidentSeq();
			openChatMemberService.addOpenChatMember(openChatSeq, residentSeq);
			openChatService.setCurrHead(openChatSeq);
			return "/resident/warm/open_chatting/chatRoom";
		}

		return "redirect:/notLoginErr";
	}

	// 방 만들기
	@RequestMapping(value="/resident/createChatRoom", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String createRoom(OpenChatVO openChatVO, HttpSession session) throws JsonProcessingException {
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginResident");

		Map<String, Object> result = new HashMap<>();
		if(loginResident == null) {
			result.put("result", "failure");
			result.put("msg", "로그인을 먼저 해주세요.");
		}else {
			openChatVO.setResidentSeq(loginResident.getResidentSeq());
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
