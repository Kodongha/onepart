package com.kh.onepart.resident.my_apartment.vote.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.my_apartment.vote.model.service.VoteService;

@Controller
public class VoteController {
	@Autowired
	private VoteService vs;

	@RequestMapping("/resident/menuVote")
	public ModelAndView moveVote(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/menuVote123");

		int residentSeq = ((ResidentVO) request.getSession().getAttribute("loginUser")).getResidentSeq();

		//현재 진행중인 선거 리스트 불러오는 메소드
		ArrayList ingVoteList = vs.selectAllIngVoteList(residentSeq);
		System.out.println("controller ingVoteList : " + ingVoteList);

		//현재 진행중인 투표중 로그인유저가 참여하지 않은 선거 리스트 불러오는 메소드
		ArrayList noVoteList = vs.selectAllNoVoteList(residentSeq);

		//일주일 이내에 종료된 선거 리스트 불러오는 메소드
		ArrayList endVoteList = vs.selectAllEndVoteList(residentSeq);

		mv.addObject("ingVoteList", ingVoteList);
		mv.addObject("noVoteList", noVoteList);
		mv.addObject("endVoteList", endVoteList);
		mv.setViewName("/resident/my_apartment/vote/vote_main");

		return mv;

	}

	@RequestMapping("/resident/candidateApply")
	public ModelAndView moveVote_candidateApply(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/menuVote");

		//현재 후보신청을 받고있는 선거 리스트 불러오는메소드
		ArrayList candidateVoteList = vs.selectAllCandidateVoteList();

		mv.addObject("candidateVoteList", candidateVoteList);
		mv.setViewName("/resident/my_apartment/vote/vote_election_apply");

		return mv;
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
