package com.kh.onepart.manager.vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.manager.vote.model.vo.ElectionVote;
import com.kh.onepart.manager.vote.model.vo.GeneralVote;

@Repository
public class ManagerVoteDaoImpl implements ManagerVoteDao{
	//현재 진행중인 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllIngVoteList(SqlSessionTemplate sqlSession) {

		ArrayList ingVoteList = (ArrayList) sqlSession.selectList("manager_vote.selectAllIngVoteList");

		return ingVoteList;

	}
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllEndVoteList(SqlSessionTemplate sqlSession) {

		ArrayList endVoteList = (ArrayList) sqlSession.selectList("manager_vote.selectAllEndVoteList");

		return endVoteList;

	}
	//선택한 선거의 상세정보를 불러오는 메소드
	@Override
	public GeneralVote selectOneGeneralVoteInfo(SqlSessionTemplate sqlSession, int voteSeq) {

		GeneralVote vote = sqlSession.selectOne("manager_vote.selectOneGeneralVoteInfo", voteSeq);

		return vote;

	}
	//선택한 선거의 후보 리스트를 불러오는 메소드
	@Override
	public ArrayList selectAllCandidateList(SqlSessionTemplate sqlSession, int voteSeq) {

		ArrayList candidateList = (ArrayList) sqlSession.selectList("manager_vote.selectAllCandidateList", voteSeq);

		return candidateList;

	}
	//선택한 선거의 상세정보를 불러오는 메소드 (선거)
	@Override
	public ElectionVote selectOneElectionVoteInfo(SqlSessionTemplate sqlSession, int voteSeq) {

		ElectionVote vote = sqlSession.selectOne("manager_vote.selectOneElectionVoteInfo", voteSeq);

		return vote;

	}
	//선택한 선거의 후보 리스트를 불러오는 메소드 (선거)
	@Override
	public ArrayList selectAllElectionCandidateList(SqlSessionTemplate sqlSession, int voteSeq) {

		ArrayList candidateList = (ArrayList) sqlSession.selectList("manager_vote.selectAllElectionCandidateList", voteSeq);

		return candidateList;

	}
	//현재 선임되어있는 선관위 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllSuperintendList(SqlSessionTemplate sqlSession) {

		ArrayList superintendList = (ArrayList) sqlSession.selectList("manager_vote.selectAllSuperintendList");

		return superintendList;

	}

}
