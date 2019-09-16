package com.kh.onepart.resident.superintend_vote.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.superintend_vote.model.vo.ApartDetailInfo;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVote;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVoteCandidate;
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
	//해당 선택동에 포함된 호 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllHoList(SqlSessionTemplate sqlSession, int bdNm) {

		ArrayList hoList = (ArrayList) sqlSession.selectList("Superintend.selectAllHoList", bdNm);

		return hoList;

	}
	//해당 선택동, 선택호 에 포함된 호 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllNameList(SqlSessionTemplate sqlSession, ApartDetailInfo tdi) {

		ArrayList nameList = (ArrayList) sqlSession.selectList("Superintend.selectAllNameList", tdi);

		return nameList;
	}
	//해당 후보를 등록처리하고 정보 update하는 메소드
	@Override
	public int updateElectionVoteCandidate(SqlSessionTemplate sqlSession, ElectionVoteCandidate evc) {

		int result = sqlSession.update("Superintend.updateElectionVoteCandidate", evc);

		return result;

	}
	//해당 선거의 후보신청 고유번호를 받아오는 메소드
	@Override
	public int selectUserElectVoteCndtSignupSeq(SqlSessionTemplate sqlSession, ElectionVoteCandidate evc) {

		int electVoteCndtSignupSeq = sqlSession.selectOne("Superintend.selectUserElectVoteCndtSignupSeq", evc);

		return electVoteCndtSignupSeq;

	}
	//해당 투표 정보 담아오는 메소드
	@Override
	public GeneralVote selectOneGeneralVote(SqlSessionTemplate sqlSession, int voteSeq) {

		GeneralVote gv = sqlSession.selectOne("Superintend.selectOneGeneralVote", voteSeq);

		return gv;

	}
	//해당 투표에 등록된 후보 담아오는 메소드
	@Override
	public ArrayList selectAllGeneralVoteCandidate(SqlSessionTemplate sqlSession, int voteSeq) {

		ArrayList candidateListGen = (ArrayList) sqlSession.selectList("Superintend.selectAllGeneralVoteCandidate", voteSeq);

		return candidateListGen;

	}
	//입력받은 정보의 거주자가 있는지 확인하는 메소드
	@Override
	public int selectConfirmResident(SqlSessionTemplate sqlSession, ResidentVO rs) {

		int result = sqlSession.selectOne("Superintend.selectConfirmResident", rs);

		return result;

	}
	//일반 세대주 vs 복수 세대주 구분하는 메소드
	@Override
	public int selectKindResident(SqlSessionTemplate sqlSession, ResidentVO rs) {

		int kind = sqlSession.selectOne("Superintend.selectKindResident", rs);

		return kind;

	}
	//복수 세대주 중 투표권을 가지고 있는 세대주 매치하는 메소드
	@Override
	public int selectConfirmResidents(SqlSessionTemplate sqlSession, ResidentVO rs) {

		int result = sqlSession.selectOne("Superintend.selectConfirmResidents", rs);

		return result;

	}
	//해당 선거에 등록된 후보신청서 리스트 담아오는 메소드
	@Override
	public ArrayList selectAllElectionVoteCandidateApply(SqlSessionTemplate sqlSession, int electVoteSeq) {

		ArrayList candidateApplyList = (ArrayList) sqlSession.selectList("Superintend.selectAllElectionVoteCandidateApply", electVoteSeq);

		return candidateApplyList;

	}
	//해당 신청서 세부내역 담아오는 메소드
	@Override
	public ElectionVoteCandidate selectOneElectionVoteCandidate(SqlSessionTemplate sqlSession,
			int electVoteCndtSignupSeq) {

		ElectionVoteCandidate evc = sqlSession.selectOne("Superintend.selectOneElectionVoteCandidate", electVoteCndtSignupSeq);

		return evc;

	}
	//해당 신청서 경력사항 리스트 담아오는 메소드
	@Override
	public ArrayList selectAllElectionVoteCadidateCareer(SqlSessionTemplate sqlSession, int electVoteCndtSignupSeq) {

		ArrayList careerList = (ArrayList) sqlSession.selectList("Superintend.selectAllElectionVoteCadidateCareer", electVoteCndtSignupSeq);

		return careerList;

	}


}
