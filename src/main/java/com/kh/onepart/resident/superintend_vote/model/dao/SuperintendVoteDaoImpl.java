package com.kh.onepart.resident.superintend_vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVote;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVote;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteBdNm;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteCandidate;

@Repository
public class SuperintendVoteDaoImpl implements SuperintendVoteDao{
	//투표테이블 insert 메소드 (return gnrVoteSeq)
	@Override
	public int insertGeneralVote(SqlSessionTemplate sqlSession, GeneralVote gv) {

		sqlSession.insert("Superintend.insertGeneralVote", gv);
		int gnrVoteSeq = gv.getGnrVoteSeq();

		return gnrVoteSeq;

	}
	//동 투표일때 통투표 테이블 insert 메소드
	@Override
	public int insertGeneralVoteBdNm(SqlSessionTemplate sqlSession, GeneralVoteBdNm generalVoteBdNm) {

		int result = sqlSession.insert("Superintend.insertGeneralVoteBdNm", generalVoteBdNm);

		return result;
	}
	//해당 투표 후보정보 후보테이블 insert 메소드
	@Override
	public int insertGeneralVoteCandidate(SqlSessionTemplate sqlSession, GeneralVoteCandidate generalVoteCandidate) {

		int result = sqlSession.insert("Superintend.insertGeneralVoteCandidate", generalVoteCandidate);

		return result;
	}
	//선거정보 insert하는 메소드
	@Override
	public int insertElectionVote(SqlSessionTemplate sqlSession, ElectionVote ev) {

		int result = sqlSession.insert("Superintend.insertElectionVote", ev);

		return result;
	}
	//현재 진행중인 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllIngVoteList(SqlSessionTemplate sqlSession) {

		ArrayList ingVoteList = (ArrayList) sqlSession.selectList("Superintend.selectAllIngVoteList");

		return ingVoteList;

	}
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllEndVoteList(SqlSessionTemplate sqlSession) {

		ArrayList endVoteList = (ArrayList) sqlSession.selectList("Superintend.selectAllEndVoteList");

		return endVoteList;

	}
	//해당 선거 정보 담아오는 메소드
	@Override
	public ElectionVote selectOneElectionVote(SqlSessionTemplate sqlSession, int voteSeq) {

		ElectionVote ev = sqlSession.selectOne("Superintend.selectOneElectionVote", voteSeq);

		return ev;

	}
	//해당 선거에 등록된 후보 담아오는 메소드
	@Override
	public ArrayList selectAllElectionVoteCandidate(SqlSessionTemplate sqlSession, int voteSeq) {

		ArrayList candidateList = (ArrayList) sqlSession.selectList("Superintend.selectAllElectionVoteCandidate", voteSeq);

		return candidateList;

	}

}
