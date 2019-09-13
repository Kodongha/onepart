package com.kh.onepart.resident.my_apartment.vote.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.resident.my_apartment.vote.model.dao.VoteDao;

@Service
public class VoteServiceImple implements VoteService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private VoteDao vd;

	//현재 진행중인 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllIngVoteList(int residentSeq) {

		ArrayList ingVoteList = vd.selectAllIngVoteList(sqlSession, residentSeq);

		return ingVoteList;

	}
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllEndVoteList(int residentSeq) {

		ArrayList endVoteList = vd.selectAllEndVoteList(sqlSession, residentSeq);

		return endVoteList;

	}
	//현재 진행중인 투표중 로그인유저가 참여하지 않은 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllNoVoteList(int residentSeq) {

		ArrayList noVoteList = vd.selectAllNoVoteList(sqlSession, residentSeq);

		return noVoteList;

	}
	//현재 후보신청을 받고있는 선거 리스트 불러오는메소드
	@Override
	public ArrayList selectAllCandidateVoteList() {

		ArrayList candidateVoteList = vd.selectAllCandidateVoteList(sqlSession);

		return candidateVoteList;

	}


}
