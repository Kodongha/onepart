package com.kh.onepart.resident.superintend_vote.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.resident.superintend_vote.model.service.SuperintendVoteService;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVote;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVote;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteBdNm;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteCandidate;

@Controller
public class SuperintendVoteController {
	@Autowired
	private SuperintendVoteService svs;

	@RequestMapping("/resident/menuSuperintendVote")
	public ModelAndView menuSuperintendVote(ModelAndView mv) {
		System.out.println("/menuSuperintendVote");

		//현재 진행중인 선거 리스트 불러오는 메소드
		ArrayList ingVoteList = svs.selectAllIngVoteList();
		System.out.println("controller ingVoteList : " + ingVoteList);

		//일주일 이내에 종료된 선거 리스트 불러오는 메소드
		ArrayList endVoteList = svs.selectAllEndVoteList();

		mv.addObject("ingVoteList", ingVoteList);
		mv.addObject("endVoteList", endVoteList);
		mv.setViewName("/resident/superintend_vote/superintend_vote/superintend_vote_main");

		return mv;
	}

	@RequestMapping("/resident/superintend_vote_registration_main")
	public ModelAndView votingCandidate(HttpServletRequest request, ModelAndView mv) {
		System.out.println("/menuSuperintendVote");
		int voteSeq = Integer.parseInt(request.getParameter("voteSeq"));
		System.out.println("controller voteSeq : " + voteSeq);

		//해당 선거 정보 담아오는 메소드
		ElectionVote ev = svs.selectOneElectionVote(voteSeq);
		System.out.println("controller ev : " + ev);

		//해당 선거에 등록된 후보 담아오는 메소드
		ArrayList candidateList = svs.selectAllElectionVoteCandidate(voteSeq);

		mv.addObject("candidateList", candidateList);
		mv.addObject("ev", ev);
		mv.setViewName("/resident/superintend_vote/superintend_vote/superintend_vote_registration_main");

		return mv;
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

	@RequestMapping("/resident/insert_newVote_general")
	public ModelAndView insert_newVote_general(ModelAndView mv, HttpServletRequest request) {

		//투표정보 담기
		GeneralVote gv = new GeneralVote();
		gv.setGnrVoteName(request.getParameter("gnrVoteName"));
		gv.setGnrVoteType(Integer.parseInt(request.getParameter("gnrVoteType")));
		gv.setGnrVoteEndDt(request.getParameter("gnrVoteEndDt"));
		gv.setGnrVoteOfflinePlace(request.getParameter("gnrVoteOfflinePlace"));
		gv.setGnrVoteDetail(request.getParameter("gnrVoteDetail"));
		gv.setGnrVoteGrant(Integer.parseInt(request.getParameter("gnrVoteGrant")));
		System.out.println("controller gv : " + gv);

		//동투표시, 동별투표정보 담기
		ArrayList<GeneralVoteBdNm> bdNmList = new ArrayList<GeneralVoteBdNm>();
		if(gv.getGnrVoteGrant() == 2) {
			String[] bdNmArrResult = request.getParameter("bdNmArr").split(",");
			for(int i = 0; i < bdNmArrResult.length; i++) {
				System.out.println("Controller bdNmArrResult : " + bdNmArrResult[i]);
				GeneralVoteBdNm gvb = new GeneralVoteBdNm();
				gvb.setBdNm(Integer.parseInt(bdNmArrResult[i]));
				bdNmList.add(gvb);
			}
			//
		}
		System.out.println("controller BdNmList : " + bdNmList);

		//투표 후보정보  담기
		System.out.println("controller voteCandidateArr : " + request.getParameter("voteCandidateArr"));
		String[] allCandidateInfo = request.getParameter("voteCandidateArr").split(",");
		String candidateNo = null;
		String candidateNm = null;
		String candidateInfo = null;
		ArrayList<GeneralVoteCandidate> candidateList = new ArrayList<GeneralVoteCandidate>();
		for(int i = 0; i < allCandidateInfo.length; i++) {
			String[] candidate = allCandidateInfo[i].split(":");
			for(int j = 0; j < candidate.length; j++) {
				System.out.println("contoller candidate : " + candidate[j]);
				if(j == 0) {
					candidateNo = candidate[j];
				}else if(j == 1) {
					candidateNm = candidate[j];
				}else {
					candidateInfo = candidate[j];
				}
			}
			String cndtNm = "후보" + candidateNo + ". " + candidateNm;
			GeneralVoteCandidate gvc = new GeneralVoteCandidate();
			gvc.setCndtNm(cndtNm);
			gvc.setCndtDetail(candidateInfo);
			candidateList.add(gvc);
		}
		System.out.println("controller candidateList : " + candidateList);

		//투표 insert 메소드
		int result = svs.insertGeneralVote(gv, bdNmList, candidateList);

		mv.setViewName("jsonView");

		return mv;
	}

	@RequestMapping("/resident/insert_newVote_election")
	public ModelAndView insert_newVote_election(ModelAndView mv, HttpServletRequest request) {

		//선거정보 담기
		ElectionVote ev = new ElectionVote();
		ev.setElectNm(request.getParameter("electNm"));
		ev.setElectType(Integer.parseInt(request.getParameter("electType")));
		ev.setElectVoteDetail(request.getParameter("electVoteDetail"));
		ev.setCnddEnrollStartDt(request.getParameter("cnddEnrollStartDt"));
		ev.setCnddEnrollEndDt(request.getParameter("cnddEnrollEndDt"));
		ev.setCampaignStartDt(request.getParameter("campaignStartDt"));
		ev.setCampaignEndDt(request.getParameter("campaignEndDt"));
		ev.setVoteStartDt(request.getParameter("voteStartDt"));
		ev.setVoteEndDt(request.getParameter("voteEndDt"));
		ev.setElectVoteOfflinePlace(request.getParameter("electVoteOfflinePlace"));
		if(Integer.parseInt(request.getParameter("electType")) == 3) {
			ev.setBdNm(Integer.parseInt(request.getParameter("bdNm")));
		}
		System.out.println("controller ev : " + ev);

		//선거정보 insert하는 메소드
		int result = svs.insertElectionVote(ev);

		mv.setViewName("jsonView");

		return mv;
	}



}
