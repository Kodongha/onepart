package com.kh.onepart.resident.my_apartment.vote.model.service;

import java.util.ArrayList;

public interface VoteService {
	//현재 진행중인 선거 리스트 불러오는 메소드
	ArrayList selectAllIngVoteList(int residentSeq);
	//현재 진행중인 투표중 로그인유저가 참여하지 않은 선거 리스트 불러오는 메소드
	ArrayList selectAllNoVoteList(int residentSeq);
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	ArrayList selectAllEndVoteList(int residentSeq);
	//현재 후보신청을 받고있는 선거 리스트 불러오는메소드
	ArrayList selectAllCandidateVoteList();


}
