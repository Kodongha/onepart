package com.kh.onepart.manager.vote.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.manager.vote.model.dao.ManagerVoteDao;
import com.kh.onepart.manager.vote.model.vo.GeneralVote;
import com.kh.onepart.manager.vote.model.vo.ElectionVote;


@Service
public class ManagerVoteServiceImpl implements ManagerVoteService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ManagerVoteDao vd;

	//현재 진행중인 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllIngVoteList() {

		ArrayList ingVoteList = vd.selectAllIngVoteList(sqlSession);

		return ingVoteList;

	}
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllEndVoteList() {

		ArrayList endVoteList = vd.selectAllEndVoteList(sqlSession);

		return endVoteList;

	}
	//선택한 선거의 상세정보를 불러오는 메소드
	@Override
	public GeneralVote selectOneGeneralVoteInfo(int voteSeq) {

		GeneralVote vote = vd.selectOneGeneralVoteInfo(sqlSession, voteSeq);

		return vote;

	}
	//선택한 선거의 후보 리스트를 불러오는 메소드
	@Override
	public ArrayList selectAllCandidateList(int voteSeq) {

		ArrayList candidateList = vd.selectAllCandidateList(sqlSession, voteSeq);

		return candidateList;

	}
	//선택한 선거의 상세정보를 불러오는 메소드 (선거)
	@Override
	public ElectionVote selectOneElectionVoteInfo(int voteSeq) {

		ElectionVote vote = vd.selectOneElectionVoteInfo(sqlSession, voteSeq);

		return vote;

	}
	//선택한 선거의 후보 리스트를 불러오는 메소드 (선거)
	@Override
	public ArrayList selectAllElectionCandidateList(int voteSeq) {

		ArrayList candidateList = vd.selectAllElectionCandidateList(sqlSession, voteSeq);

		return candidateList;

	}
	//현재 선임되어있는 선관위 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllSuperintendList() {

		ArrayList superintendList = vd.selectAllSuperintendList(sqlSession);

		return superintendList;

	}

}
