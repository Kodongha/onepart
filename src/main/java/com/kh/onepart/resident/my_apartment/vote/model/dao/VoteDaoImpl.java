package com.kh.onepart.resident.my_apartment.vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class VoteDaoImpl implements VoteDao{
	//현재 진행중인 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllIngVoteList(SqlSessionTemplate sqlSession, int residentSeq) {

		ArrayList ingVoteList = (ArrayList) sqlSession.selectList("vote.selectAllIngVoteList", residentSeq);

		return ingVoteList;

	}
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllEndVoteList(SqlSessionTemplate sqlSession, int residentSeq) {

		ArrayList endVoteList = (ArrayList) sqlSession.selectList("vote.selectAllEndVoteList", residentSeq);

		return endVoteList;

	}
	//현재 진행중인 투표중 로그인유저가 참여하지 않은 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllNoVoteList(SqlSessionTemplate sqlSession, int residentSeq) {

		ArrayList noVoteList = (ArrayList) sqlSession.selectList("vote.selectAllNoVoteList", residentSeq);

		return noVoteList;

	}
	//현재 후보신청을 받고있는 선거 리스트 불러오는메소드
	@Override
	public ArrayList selectAllCandidateVoteList(SqlSessionTemplate sqlSession) {

		ArrayList candidateVoteList = (ArrayList) sqlSession.selectList("vote.selectAllCandidateVoteList");

		return candidateVoteList;

	}

}
