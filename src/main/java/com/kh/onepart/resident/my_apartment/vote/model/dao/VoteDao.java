package com.kh.onepart.resident.my_apartment.vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.resident.my_apartment.vote.model.vo.GeneralVote;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VoteList;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VotePrtcpt;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VoteSelected;

public interface VoteDao {
	//현재 진행중인 선거 리스트 불러오는 메소드
	ArrayList selectAllIngVoteList(SqlSessionTemplate sqlSession, int residentSeq);
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	ArrayList selectAllEndVoteList(SqlSessionTemplate sqlSession, int residentSeq);
	//현재 진행중인 투표중 로그인유저가 참여하지 않은 선거 리스트 불러오는 메소드
	ArrayList selectAllNoVoteList(SqlSessionTemplate sqlSession, int residentSeq);
	//현재 후보신청을 받고있는 선거 리스트 불러오는메소드
	ArrayList selectAllCandidateVoteList(SqlSessionTemplate sqlSession);
	//선택한 선거의 상세정보를 불러오는 메소드 (르그인 유저의 현황도 함께)
	GeneralVote selectOneGeneralVoteInfo(SqlSessionTemplate sqlSession, int voteSeq);
	//로그인유저의 현황을 불러오는 메소드
	VoteList selectOneGeneralVoteUserInfo(SqlSessionTemplate sqlSession, VoteList info);
	//선택한 선거의 후보 리스트를 불러오는 메소드
	ArrayList selectAllCandidateList(SqlSessionTemplate sqlSession, int voteSeq);
	//해당 유저가 참여한 투표참여 고유번호 받아오는 메소드
	int selectUserVotePrtcptSeq(SqlSessionTemplate sqlSession, VotePrtcpt vp);
	//받아온 투표참여 고유번호에 대한 선택내역 수정내역으로 update하는 메소드
	int updateGeneralVote(SqlSessionTemplate sqlSession, VoteSelected vs);
	//해당 투표내역이 insert가 되고 그에 대한 currentval값 받아오는 메소드
	int insertCurrentVotePrtcptSeq(SqlSessionTemplate sqlSession, VotePrtcpt vp);
	//해당 투표내역에 선택된 후보내역 insert 하는 메소드
	int insertGeneralVote(SqlSessionTemplate sqlSession, VoteSelected vs);

}
