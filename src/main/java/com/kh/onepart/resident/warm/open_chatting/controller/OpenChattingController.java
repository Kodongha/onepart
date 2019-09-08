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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatMemberService;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatService;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatMemberVO;
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

	@RequestMapping("/resident/maxCheck")
	@ResponseBody
	public String maxCheck(@RequestParam("openChatSeq") int openChatSeq,HttpSession session) throws JsonProcessingException {
		Map<String, Object> result = new HashMap<>();
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginUser");
		if(loginResident != null) {
		int residentSeq = loginResident.getResidentSeq();
		OpenChatVO openChatVO = openChatService.selectOneById(openChatSeq);

		boolean check = openChatMemberService.enterCheckMember(openChatSeq, residentSeq);
		result.put("result", "success");
		result.put("OpenChatVO",openChatVO);
		result.put("check",check);
		}
		result.put("loginResident",loginResident);
		return new ObjectMapper().writeValueAsString(result);

	}


	@RequestMapping("/resident/getOut")
	@ResponseBody
	public String getOut(@RequestParam("openChatSeq") int openChatSeq, @RequestParam("residentSeq") int residentSeq,HttpSession session) throws JsonProcessingException {
		Map<String, Object> result = new HashMap<>();
		OpenChatMemberVO openChatMemberVO = new OpenChatMemberVO();
		openChatMemberVO.setResidentSeq(residentSeq);
		openChatMemberVO.setOpenChatSeq(openChatSeq);
		openChatMemberService.getOutThisRoom(openChatMemberVO);
		openChatService.setCurrHead(openChatSeq);
		result.put("result", "success");

		return new ObjectMapper().writeValueAsString(result);

	}

	// 채팅방 참여
	@RequestMapping("/resident/menuOpenChatRoom/{openChatSeq}")
	public String moveOpenChatRoom(@PathVariable("openChatSeq") int openChatSeq, HttpSession session,Model model) {
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginUser");

		if(loginResident != null) {
			int residentSeq = loginResident.getResidentSeq();

			//채팅방을 참여했었는지?
			OpenChatMemberVO openChatMemberVO = new OpenChatMemberVO();
			openChatMemberVO.setResidentSeq(residentSeq);
			openChatMemberVO.setOpenChatSeq(openChatSeq);
			int check = openChatMemberService.pastMemberEnter(openChatMemberVO);
			if(check>0) {
				openChatMemberService.reEnterOpenChatMember(openChatMemberVO);
			}else {
				openChatMemberService.addOpenChatMember(openChatSeq, residentSeq);
			}
			openChatService.setCurrHead(openChatSeq);
			List<ResidentVO> residentList = openChatService.getResidentList(openChatSeq);
			OpenChatVO openChatVO = openChatService.selectOneById(openChatSeq);

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
		Map<String, Object> result = new HashMap<>();
		if(loginResident == null) {
			result.put("result", "failure");
			result.put("msg", "로그인을 먼저 해주세요.");
		}else {
			int residentSeq = loginResident.getResidentSeq();
			openChatVO.setResidentSeq(residentSeq);
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
	public String getRoomListAll(HttpSession session) throws JsonProcessingException {
		ResidentVO loginResident = (ResidentVO)session.getAttribute("loginUser");
		int residentSeq = loginResident.getResidentSeq();
		Map<String, Object> result = new HashMap<>();
		int countChatRoom = openChatService.countChatRoom();
		int countMyChatRoom = openChatService.countChatMyRoom(loginResident);
		List<OpenChatVO> openChatRoomList = openChatService.getRoomListAll();
		List<OpenChatVO> openChatMyRoomList = openChatService.getMyRoomListAll(residentSeq);
		for (OpenChatVO openChatVO : openChatRoomList) {
			if(openChatVO.getOpenChatCurrHead() == 0) {
				openChatService.updateOpenChatDelete(openChatVO);
			}
		}
		List<OpenChatVO> openChatRoomListcheck = openChatService.getRoomListAll();
		List<OpenChatVO> openChatMyRoomListcheck = openChatService.getMyRoomListAll(residentSeq);
		result.put("countMyChatRoom",countMyChatRoom);
		result.put("countChatRoom",countChatRoom);
		result.put("result", "success");
		result.put("openChatRoomList", openChatRoomListcheck);
		result.put("openChatMyRoomList", openChatMyRoomListcheck);

		return new ObjectMapper().writeValueAsString(result);

	}
}
