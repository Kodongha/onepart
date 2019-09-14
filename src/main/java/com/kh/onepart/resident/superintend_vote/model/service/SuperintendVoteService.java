package com.kh.onepart.resident.superintend_vote.model.service;

import java.util.ArrayList;

import com.kh.onepart.resident.superintend_vote.model.vo.ApartDetailInfo;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVote;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVoteCandidate;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVote;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteBdNm;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteCandidate;

public interface SuperintendVoteService {
	//투표정보 insert 하는 메소드
	int insertGeneralVote(GeneralVote gv, ArrayList<GeneralVoteBdNm> bdNmList, ArrayList<GeneralVoteCandidate> candidateList);
	//선거정보 insert하는 메소드
	int insertElectionVote(ElectionVote ev);
	//현재 진행중인 선거 리스트 불러오는 메소드
	ArrayList selectAllIngVoteList();
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	ArrayList selectAllEndVoteList();
	//해당 선거 정보 담아오는 메소드
	ElectionVote selectOneElectionVote(int voteSeq);
	//해당 선거에 등록된 후보 담아오는 메소드
	ArrayList selectAllElectionVoteCandidate(int voteSeq);
	//해당 선택동에 포함된 호 리스트 불러오는 메소드
	ArrayList selectAllHoList(int bdNm);
	//해당 선택동, 선택호 에 포함된 호 리스트 불러오는 메소드
	ArrayList selectAllNameList(ApartDetailInfo tdi);
	//해당 후보를 등록처리하고 정보 update하는 메소드
	int updateElectionVoteCandidate(ElectionVoteCandidate evc);

}
