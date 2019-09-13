package com.kh.onepart.resident.my_apartment.vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

public interface VoteDao {
	//현재 진행중인 선거 리스트 불러오는 메소드
	ArrayList selectAllIngVoteList(SqlSessionTemplate sqlSession, int residentSeq);
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	ArrayList selectAllEndVoteList(SqlSessionTemplate sqlSession, int residentSeq);
	//현재 진행중인 투표중 로그인유저가 참여하지 않은 선거 리스트 불러오는 메소드
	ArrayList selectAllNoVoteList(SqlSessionTemplate sqlSession, int residentSeq);
	//현재 후보신청을 받고있는 선거 리스트 불러오는메소드
	ArrayList selectAllCandidateVoteList(SqlSessionTemplate sqlSession);

}
