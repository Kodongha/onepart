package com.kh.onepart.resident.my_apartment.vote.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VoteController {

	@RequestMapping("/resident/menuVote")
	public String moveVote() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote";
	}
	
}
