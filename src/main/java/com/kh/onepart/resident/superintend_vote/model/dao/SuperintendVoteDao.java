package com.kh.onepart.resident.superintend_vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.superintend_vote.model.vo.ApartDetailInfo;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVote;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVoteCandidate;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVote;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteBdNm;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteCandidate;

public interface SuperintendVoteDao {
	//투표테이블 insert 메소드 (return gnrVoteSeq)
	int insertGeneralVote(SqlSessionTemplate sqlSession, GeneralVote gv);
	//동 투표일때 통투표 테이블 insert 메소드
	int insertGeneralVoteBdNm(SqlSessionTemplate sqlSession, GeneralVoteBdNm generalVoteBdNm);
	//해당 투표 후보정보 후보테이블 insert 메소드
	int insertGeneralVoteCandidate(SqlSessionTemplate sqlSession, GeneralVoteCandidate generalVoteCandidate);
	//선거정보 insert하는 메소드
	int insertElectionVote(SqlSessionTemplate sqlSession, ElectionVote ev);
	//현재 진행중인 선거 리스트 불러오는 메소드
	ArrayList selectAllIngVoteList(SqlSessionTemplate sqlSession);
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	ArrayList selectAllEndVoteList(SqlSessionTemplate sqlSession);
	//해당 선거 정보 담아오는 메소드
	ElectionVote selectOneElectionVote(SqlSessionTemplate sqlSession, int voteSeq);
	//해당 선거에 등록된 후보 담아오는 메소드
	ArrayList selectAllElectionVoteCandidate(SqlSessionTemplate sqlSession, int voteSeq);
	//해당 선택동에 포함된 호 리스트 불러오는 메소드
	ArrayList selectAllHoList(SqlSessionTemplate sqlSession, int bdNm);
	//해당 선택동, 선택호 에 포함된 호 리스트 불러오는 메소드
	ArrayList selectAllNameList(SqlSessionTemplate sqlSession, ApartDetailInfo tdi);
	//해당 후보를 등록처리하고 정보 update하는 메소드
	int updateElectionVoteCandidate(SqlSessionTemplate sqlSession, ElectionVoteCandidate evc);
	//해당 선거의 후보신청 고유번호를 받아오는 메소드
	int selectUserElectVoteCndtSignupSeq(SqlSessionTemplate sqlSession, ElectionVoteCandidate evc);
	//해당 투표 정보 담아오는 메소드
	GeneralVote selectOneGeneralVote(SqlSessionTemplate sqlSession, int voteSeq);
	//해당 투표에 등록된 후보 담아오는 메소드
	ArrayList selectAllGeneralVoteCandidate(SqlSessionTemplate sqlSession, int voteSeq);
	//입력받은 정보의 거주자가 있는지 확인하는 메소드
	int selectConfirmResident(SqlSessionTemplate sqlSession, ResidentVO rs);
	//일반 세대주 vs 복수 세대주 구분하는 메소드
	int selectKindResident(SqlSessionTemplate sqlSession, ResidentVO rs);
	//복수 세대주 중 투표권을 가지고 있는 세대주 매치하는 메소드
	int selectConfirmResidents(SqlSessionTemplate sqlSession, ResidentVO rs);
	//해당 선거에 등록된 후보신청서 리스트 담아오는 메소드
	ArrayList selectAllElectionVoteCandidateApply(SqlSessionTemplate sqlSession, int electVoteSeq);
	//해당 신청서 세부내역 담아오는 메소드
	ElectionVoteCandidate selectOneElectionVoteCandidate(SqlSessionTemplate sqlSession, int electVoteCndtSignupSeq);
	//해당 신청서 경력사항 리스트 담아오는 메소드
	ArrayList selectAllElectionVoteCadidateCareer(SqlSessionTemplate sqlSession, int electVoteCndtSignupSeq);

}
