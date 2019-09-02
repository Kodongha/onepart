package com.kh.onepart.resident.superintend_vote.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SuperintendVoteController {
	
	@RequestMapping("/resident/menuSuperintendVote")
	public String menuSuperintendVote() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_main";
	}
	
	@RequestMapping("/resident/votingCandidate")
	public String votingCandidate() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_registration_main";
	}
	
	@RequestMapping("/resident/candidateRegistration")
	public String candidateRegistration() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_registration_candidateReg";
	}
	
	@RequestMapping("/resident/regicandidateApply")
	public String candidateApply() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_registration_candidateApply";
	}
	
	@RequestMapping("/resident/candidateSupervise")
	public String candidateSupervise() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_registration_candidateSupervise";
	}
	
	@RequestMapping("/resident/votingRealvote")
	public String votingRealvote() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_realvote_main";
	}
	
	@RequestMapping("/resident/sendMessageResident")
	public String sendMessageResident() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_realvote_sendMessage";
	}
	
	@RequestMapping("/resident/changeOffline")
	public String changeOffline() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_realvote_changeOffline";
	}
	
	@RequestMapping("/resident/endingCandidate")
	public String endingCandidate() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_endingCandidate";
	}
	
	@RequestMapping("/resident/endingGeneral")
	public String endingGeneral() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_endingGeneral";
	}
	
	@RequestMapping("/resident/candApplyDetail")
	public String candApplyDetail() {
		System.out.println("/menuSuperintendVote");
		return "/resident/superintend_vote/superintend_vote/superintend_vote_realvote_candApplyDetail";		
	}

}
