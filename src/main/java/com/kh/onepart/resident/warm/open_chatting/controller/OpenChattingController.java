package com.kh.onepart.resident.warm.open_chatting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OpenChattingController {

	@RequestMapping("/resident/menuOpenChatting")
	public String moveOpenChatting() {
		System.out.println("/resident/menuOpenChatting");
		return "/resident/warm/open_chatting/openChatting";
	}
	
}
