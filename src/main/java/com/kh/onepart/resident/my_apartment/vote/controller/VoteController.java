package com.kh.onepart.resident.my_apartment.vote.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.my_apartment.vote.model.service.VoteService;
import com.kh.onepart.resident.my_apartment.vote.model.vo.GeneralVote;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VoteList;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VotePrtcpt;

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
	public ModelAndView moveVote_general(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/menuVote");
		int voteSeq = Integer.parseInt(request.getParameter("voteSeq"));
		System.out.println("controller voteSeq : " + voteSeq);
		int residentSeq = ((ResidentVO) request.getSession().getAttribute("loginUser")).getResidentSeq();

		//선택한 선거의 상세정보를 불러오는 메소드
		VoteList info = new VoteList();
		info.setVoteSeq(voteSeq);
		info.setResidentSeq(residentSeq);
		GeneralVote vote = vs.selectOneGeneralVoteInfo(voteSeq);
		System.out.println("controller vote : " + vote);

		//로그인유저의 현황을 불러오는 메소드
		VoteList voteUser = vs.selectOneGeneralVoteUserInfo(info);
		System.out.println("controller voteUser : " + voteUser);

		//선택한 선거의 총 선거율을 불러오는 메소드

		//선택한 선거의 후보 리스트를 불러오는 메소드
		ArrayList candidateList = vs.selectAllCandidateList(voteSeq);
		System.out.println("controller candidateList : " + candidateList);

		mv.addObject("vote", vote);
		mv.addObject("candidateList", candidateList);
		mv.addObject("voteUser", voteUser);
		mv.setViewName("/resident/my_apartment/vote/vote_general");

		return mv;
	}

	@RequestMapping("/resident/modifyGeneral")
	public ModelAndView moveVote_modifyGeneral(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/modifyGeneral");
		int gnrVoteSeq = Integer.parseInt(request.getParameter("gnrVoteSeq"));
		System.out.println("modify gnrVoteSeq : " + gnrVoteSeq);
		int residentSeq = ((ResidentVO) request.getSession().getAttribute("loginUser")).getResidentSeq();

		//선택한 선거의 상세정보를 불러오는 메소드
		VoteList info = new VoteList();
		info.setVoteSeq(gnrVoteSeq);
		info.setResidentSeq(residentSeq);
		GeneralVote vote = vs.selectOneGeneralVoteInfo(gnrVoteSeq);
		System.out.println("modify vote : " + vote);

		//로그인유저의 현황을 불러오는 메소드
		VoteList voteUser = vs.selectOneGeneralVoteUserInfo(info);
		System.out.println("modify voteUser : " + voteUser);

		//선택한 선거의 총 선거율을 불러오는 메소드

		//선택한 선거의 후보 리스트를 불러오는 메소드
		ArrayList candidateList = vs.selectAllCandidateList(gnrVoteSeq);
		System.out.println("modify candidateList : " + candidateList);

		mv.addObject("vote", vote);
		mv.addObject("candidateList", candidateList);
		mv.addObject("voteUser", voteUser);
		mv.setViewName("/resident/my_apartment/vote/vote_general_modify");

		return mv;
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

	@RequestMapping("/resident/realVoteGeneral")
	public ModelAndView moveVote_realVoteGeneral(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/realVoteGeneral");
		int gnrVoteSeq = Integer.parseInt(request.getParameter("gnrVoteSeq"));
		System.out.println("modify gnrVoteSeq : " + gnrVoteSeq);
		int residentSeq = ((ResidentVO) request.getSession().getAttribute("loginUser")).getResidentSeq();

		//선택한 선거의 상세정보를 불러오는 메소드
		VoteList info = new VoteList();
		info.setVoteSeq(gnrVoteSeq);
		info.setResidentSeq(residentSeq);
		GeneralVote vote = vs.selectOneGeneralVoteInfo(gnrVoteSeq);
		System.out.println("modify vote : " + vote);

		//로그인유저의 현황을 불러오는 메소드
		VoteList voteUser = vs.selectOneGeneralVoteUserInfo(info);
		System.out.println("modify voteUser : " + voteUser);

		//선택한 선거의 총 선거율을 불러오는 메소드

		//선택한 선거의 후보 리스트를 불러오는 메소드
		ArrayList candidateList = vs.selectAllCandidateList(gnrVoteSeq);
		System.out.println("modify candidateList : " + candidateList);

		mv.addObject("vote", vote);
		mv.addObject("candidateList", candidateList);
		mv.addObject("voteUser", voteUser);
		mv.setViewName("/resident/my_apartment/vote/vote_general_realvote");

		return mv;
	}

	@RequestMapping("/resident/updateGeneralVote")
	public ModelAndView updateGeneralVote(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/updateGeneralVote");

		int residentSeq = ((ResidentVO) request.getSession().getAttribute("loginUser")).getResidentSeq();
		int gnrVoteSeq = Integer.parseInt(request.getParameter("gnrVoteSeq"));
		int gnrVoteCndtEnrollSeq = Integer.parseInt(request.getParameter("gnrVoteCndtEnrollSeq"));
		System.out.println("update gnrVoteSeq : " + gnrVoteSeq);
		System.out.println("update gnrVoteCndtEnrollSeq : " + gnrVoteCndtEnrollSeq);

		//해당 투표의 수정내역 update하는 메소드
		VotePrtcpt vp = new VotePrtcpt();
		vp.setGnrVoteSeq(gnrVoteSeq);
		vp.setResidentSeq(residentSeq);
		int result = vs.updateGeneralVote(vp, gnrVoteCndtEnrollSeq);

		mv.setViewName("jsonView");

		return mv;

	}

	@RequestMapping("/resident/insertGeneralVote")
	public ModelAndView insertGeneralVote(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/updateGeneralVote");

		int residentSeq = ((ResidentVO) request.getSession().getAttribute("loginUser")).getResidentSeq();
		int gnrVoteSeq = Integer.parseInt(request.getParameter("gnrVoteSeq"));
		int gnrVoteCndtEnrollSeq = Integer.parseInt(request.getParameter("gnrVoteCndtEnrollSeq"));
		System.out.println("update gnrVoteSeq : " + gnrVoteSeq);
		System.out.println("update gnrVoteCndtEnrollSeq : " + gnrVoteCndtEnrollSeq);

		//해당 투표의 수정내역 insert하는 메소드
		VotePrtcpt vp = new VotePrtcpt();
		vp.setGnrVoteSeq(gnrVoteSeq);
		vp.setResidentSeq(residentSeq);
		int result = vs.insertGeneralVote(vp, gnrVoteCndtEnrollSeq);

		mv.setViewName("jsonView");

		return mv;

	}

}
