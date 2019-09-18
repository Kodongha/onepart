package com.kh.onepart.manager.vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.manager.vote.model.vo.GeneralVote;
import com.kh.onepart.manager.vote.model.vo.ElectionVote;

public interface ManagerVoteDao {
	//현재 진행중인 선거 리스트 불러오는 메소드
	ArrayList selectAllIngVoteList(SqlSessionTemplate sqlSession);
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	ArrayList selectAllEndVoteList(SqlSessionTemplate sqlSession);
	//선택한 선거의 상세정보를 불러오는 메소드
	GeneralVote selectOneGeneralVoteInfo(SqlSessionTemplate sqlSession, int voteSeq);
	//선택한 선거의 후보 리스트를 불러오는 메소드
	ArrayList selectAllCandidateList(SqlSessionTemplate sqlSession, int voteSeq);
	//선택한 선거의 상세정보를 불러오는 메소드 (선거)
	ElectionVote selectOneElectionVoteInfo(SqlSessionTemplate sqlSession, int voteSeq);
	//선택한 선거의 후보 리스트를 불러오는 메소드 (선거)
	ArrayList selectAllElectionCandidateList(SqlSessionTemplate sqlSession, int voteSeq);
	//현재 선임되어있는 선관위 리스트 불러오는 메소드
	ArrayList selectAllSuperintendList(SqlSessionTemplate sqlSession);

}
