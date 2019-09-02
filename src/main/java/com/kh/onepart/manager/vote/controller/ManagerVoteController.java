package com.kh.onepart.manager.vote.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerVoteController {

	@RequestMapping("/manager/menuVote")
	public String menuVote() {
		System.out.println("/menuVote");
		return "/manager/vote/vote_main";
	}

	@RequestMapping("/manager/detailvote_candidate")
	public String detailvote_candidate() {
		System.out.println("/menuVote");
		return "/manager/vote/vote_detail_candidate";
	}

	@RequestMapping("/manager/detailvote_general")
	public String detailvote_general() {
		System.out.println("/menuVote");
		return "/manager/vote/vote_detail_general";
	}

	@RequestMapping("/manager/endvote_candidate")
	public String endvote_candidate() {
		System.out.println("/menuVote");
		return "/manager/vote/vote_end_candidate";
	}

	@RequestMapping("/manager/endvote_general")
	public String endvote_general() {
		System.out.println("/menuVote");
		return "/manager/vote/vote_end_general";
	}

	@RequestMapping("/manager/delegationSuperintend")
	public String delegationSuperintend() {
		System.out.println("/menuVote");
		return "/manager/vote/vote_delegation_superintend";
	}
}
