package com.kh.onepart.resident.warm.open_chatting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String moveOpenChatting(Model model) {


		return "/resident/warm/open_chatting/openChatting";
	}

	// 채팅방 참여
	@RequestMapping("/resident/menuOpenChatRoom/{openChatSeq}")
	public String moveOpenChatRoom(@PathVariable("openChatSeq") int openChatSeq, HttpSession session,Model model) {
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginUser");


		if(loginResident != null) {
			List<ResidentVO> residentList = openChatService.getResidentList(openChatSeq);
			OpenChatVO openChatVO = openChatService.selectOneById(openChatSeq);
			System.out.println("현제 클릭한 방 정보 : " + openChatVO);
			int residentSeq = loginResident.getResidentSeq();
			openChatMemberService.addOpenChatMember(openChatSeq, residentSeq);
			openChatService.setCurrHead(openChatSeq);

			model.addAttribute("openChatVO", openChatVO);
			model.addAttribute("residentList",residentList);
			return "/resident/warm/open_chatting/chatRoom";
		}

		return "redirect:/notLoginErr";
	}

	// 방 만들기
	@RequestMapping(value="/resident/createChatRoom", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String createRoom(OpenChatVO openChatVO, HttpSession session) throws JsonProcessingException {
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginUser");
		int residentSeq = loginResident.getResidentSeq();
		Map<String, Object> result = new HashMap<>();
		if(loginResident == null) {
			result.put("result", "failure");
			result.put("msg", "로그인을 먼저 해주세요.");
		}else {
			openChatVO.setResidentSeq(loginResident.getResidentSeq());
			openChatService.createRoom(openChatVO);

			int openChatSeq = (int) openChatVO.getOpenChatSeq();

			System.out.println("방금만든 방의 시퀀스 번호 : " + openChatSeq);
			openChatMemberService.addOpenChatMember(openChatSeq, residentSeq);
			openChatService.setCurrHead(openChatSeq);
			result.put("result", "success");
		}

		return new ObjectMapper().writeValueAsString(result);
	}

	// 방 목록 전부 가져오기
	@RequestMapping(value="/resident/getRoomListAll", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String getRoomListAll() throws JsonProcessingException {
		Map<String, Object> result = new HashMap<>();
		int countChatRoom = openChatService.countChatRoom();
		result.put("countChatRoom",countChatRoom);
		result.put("result", "success");
		result.put("openChatRoomList", openChatService.getRoomListAll());

		return new ObjectMapper().writeValueAsString(result);

	}
}
