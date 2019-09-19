package com.kh.onepart.manager.vote.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.manager.vote.model.service.ManagerVoteService;
import com.kh.onepart.manager.vote.model.vo.GeneralVote;
import com.kh.onepart.manager.vote.model.vo.ElectionVote;

@Controller
public class ManagerVoteController {
	@Autowired
	private ManagerVoteService vs;

	@RequestMapping("/manager/menuVote")
	public ModelAndView menuVote(ModelAndView mv) {
		System.out.println("/menuVote");

		//현재 진행중인 선거 리스트 불러오는 메소드
		ArrayList ingVoteList = vs.selectAllIngVoteList();
		System.out.println("controller ingVoteList : " + ingVoteList);

		//일주일 이내에 종료된 선거 리스트 불러오는 메소드
		ArrayList endVoteList = vs.selectAllEndVoteList();

		//현재 선임되어있는 선관위 리스트 불러오는 메소드
		ArrayList superintendList = vs.selectAllSuperintendList();

		mv.addObject("superintendList", superintendList);
		mv.addObject("ingVoteList", ingVoteList);
		mv.addObject("endVoteList", endVoteList);
		mv.setViewName("/manager/vote/vote_main");

		return mv;
	}

	@RequestMapping("/manager/detailvote_candidate")
	public ModelAndView detailvote_candidate(HttpServletRequest request, ModelAndView mv) {
		System.out.println("/menuVote");
		int voteSeq = Integer.parseInt(request.getParameter("voteSeq"));

		//선택한 선거의 상세정보를 불러오는 메소드 (선거)
		ElectionVote vote = vs.selectOneElectionVoteInfo(voteSeq);

		//선택한 선거의 후보 리스트를 불러오는 메소드 (선거)
		ArrayList candidateList = vs.selectAllElectionCandidateList(voteSeq);

		mv.addObject("vote2", vote);
		mv.addObject("candidateList", candidateList);
		mv.setViewName("/manager/vote/vote_detail_candidate");


		return mv;
	}

	@RequestMapping("/manager/detailvote_general")
	public ModelAndView detailvote_general(HttpServletRequest request, ModelAndView mv) {
		System.out.println("/menuVote");
		int voteSeq = Integer.parseInt(request.getParameter("voteSeq"));

		//선택한 선거의 상세정보를 불러오는 메소드
		GeneralVote vote = vs.selectOneGeneralVoteInfo(voteSeq);

		//선택한 선거의 후보 리스트를 불러오는 메소드
		ArrayList candidateList = vs.selectAllCandidateList(voteSeq);

		mv.addObject("vote", vote);
		mv.addObject("candidateList", candidateList);
		mv.setViewName("/manager/vote/vote_detail_general");

		return mv;
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
	public ModelAndView delegationSuperintend(HttpServletRequest request, ModelAndView mv) {
		System.out.println("/menuVote");

		//현재 선임되어있는 선관위 리스트 불러오는 메소드
		ArrayList superintendList = vs.selectAllSuperintendList();

		mv.addObject("superintendList", superintendList);
		mv.setViewName("/manager/vote/vote_delegation_superintend");

		return mv;
	}

	@RequestMapping("/manager/deleteSuperientend")
	public ModelAndView deleteSuperientend(HttpServletRequest request, ModelAndView mv) {
		System.out.println("/menuVote");
		int residentSeq = Integer.parseInt(request.getParameter("residentSeq"));

		//해당 입주민 선관위 해임처리 하는 메소드
		int result = vs.deleteSuperiented(residentSeq);

		//현재 선임되어있는 선관위 리스트 불러오는 메소드
		ArrayList superintendList = vs.selectAllSuperintendList();

		mv.addObject("superintendList", superintendList);
		mv.setViewName("jsonView");

		return mv;
	}
}
