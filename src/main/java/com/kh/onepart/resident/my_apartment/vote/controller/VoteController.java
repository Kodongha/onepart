package com.kh.onepart.resident.my_apartment.vote.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VoteController {

	@RequestMapping("/resident/menuVote")
	public String moveVote() {
		System.out.println("/menuVote123");
		return "/resident/my_apartment/vote/vote_main";
	}
	 
	@RequestMapping("/resident/candidateApply")
	public String moveVote_candidateApply() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_election_apply";
	}
	
	@RequestMapping("/resident/election")
	public String moveVote_election() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_election";
	}
	
	@RequestMapping("/resident/general")
	public String moveVote_general() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_general";
	}
	
	@RequestMapping("/resident/modifyGeneral")
	public String moveVote_modifyGeneral() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_general_modify";
	}
	
	@RequestMapping("/resident/endElection")
	public String moveVote_endElection() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_election_end";
	}
	
	@RequestMapping("/resident/endGeneral")
	public String moveVote_endGeneral() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_general_end";
	}
	
	@RequestMapping("/resident/candidateDetail")
	public String moveVote_candidateDetail() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_election_candidate";
	}
	
	@RequestMapping("/resident/realVote")
	public String moveVote_realVote() {
		System.out.println("/menuVote");
		return "/resident/my_apartment/vote/vote_election_realvote";
	}
	
}
