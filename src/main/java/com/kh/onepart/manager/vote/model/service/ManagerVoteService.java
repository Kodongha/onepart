package com.kh.onepart.manager.vote.model.service;

import java.util.ArrayList;

import com.kh.onepart.manager.vote.model.vo.GeneralVote;
import com.kh.onepart.manager.vote.model.vo.ElectionVote;



public interface ManagerVoteService {
	//현재 진행중인 선거 리스트 불러오는 메소드
	ArrayList selectAllIngVoteList();
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	ArrayList selectAllEndVoteList();
	//선택한 선거의 상세정보를 불러오는 메소드
	GeneralVote selectOneGeneralVoteInfo(int voteSeq);
	//선택한 선거의 후보 리스트를 불러오는 메소드
	ArrayList selectAllCandidateList(int voteSeq);
	//선택한 선거의 상세정보를 불러오는 메소드
	ElectionVote selectOneElectionVoteInfo(int voteSeq);
	//선택한 선거의 후보 리스트를 불러오는 메소드 (선거)
	ArrayList selectAllElectionCandidateList(int voteSeq);
	//현재 선임되어있는 선관위 리스트 불러오는 메소드
	ArrayList selectAllSuperintendList();
	//해당 입주민 선관위 해임처리 하는 메소드
	int deleteSuperiented(int residentSeq);

}
