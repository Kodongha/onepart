package com.kh.onepart.resident.superintend_vote.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.superintend_vote.model.dao.SuperintendVoteDao;
import com.kh.onepart.resident.superintend_vote.model.vo.ApartDetailInfo;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVote;
import com.kh.onepart.resident.superintend_vote.model.vo.ElectionVoteCandidate;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVote;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteBdNm;
import com.kh.onepart.resident.superintend_vote.model.vo.GeneralVoteCandidate;

@Service
public class SuperintendVoteServiceImpl implements SuperintendVoteService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private SuperintendVoteDao svd;

	//투표정보 insert 하는 메소드
	@Override
	public int insertGeneralVote(GeneralVote gv, ArrayList<GeneralVoteBdNm> bdNmList, ArrayList<GeneralVoteCandidate> candidateList) {

		//투표테이블 insert 메소드 (return gnrVoteSeq)
		int gnrVoteSeq = svd.insertGeneralVote(sqlSession, gv);
		System.out.println("service gnrVoteSeq : " + gnrVoteSeq);

		//동 투표일때 통투표 테이블 insert 메소드
		if(gv.getGnrVoteGrant() == 2) {
			for(int i = 0 ; i < bdNmList.size(); i++) {
				bdNmList.get(i).setGnrVoteSeq(gnrVoteSeq);
				int result = svd.insertGeneralVoteBdNm(sqlSession, bdNmList.get(i));
			}
		}

		//해당 투표 후보정보 후보테이블 insert 메소드
		for(int i = 0; i < candidateList.size(); i++) {
			candidateList.get(i).setGnrVoteSeq(gnrVoteSeq);
			int result = svd.insertGeneralVoteCandidate(sqlSession, candidateList.get(i));
		}

		return gnrVoteSeq;
	}
	//선거정보 insert하는 메소드
	@Override
	public int insertElectionVote(ElectionVote ev) {

		int result = svd.insertElectionVote(sqlSession, ev);

		return result;

	}
	//현재 진행중인 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllIngVoteList() {

		ArrayList ingVoteList = svd.selectAllIngVoteList(sqlSession);

		return ingVoteList;

	}
	//일주일 이내에 종료된 선거 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllEndVoteList() {

		ArrayList endVoteList = svd.selectAllEndVoteList(sqlSession);

		return endVoteList;

	}
	//해당 선거 정보 담아오는 메소드
	@Override
	public ElectionVote selectOneElectionVote(int voteSeq) {

		ElectionVote ev = svd.selectOneElectionVote(sqlSession, voteSeq);

		return ev;

	}
	//해당 선거에 등록된 후보 담아오는 메소드
	@Override
	public ArrayList selectAllElectionVoteCandidate(int voteSeq) {

		ArrayList candidateList = svd.selectAllElectionVoteCandidate(sqlSession, voteSeq);

		return candidateList;

	}
	//해당 선택동에 포함된 호 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllHoList(int bdNm) {

		ArrayList hoList = svd.selectAllHoList(sqlSession, bdNm);

		return hoList;

	}
	//해당 선택동, 선택호 에 포함된 호 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllNameList(ApartDetailInfo tdi) {

		ArrayList nameList = svd.selectAllNameList(sqlSession, tdi);

		return nameList;

	}
	//해당 후보를 등록처리하고 정보 update하는 메소드
	@Override
	public int updateElectionVoteCandidate(ElectionVoteCandidate evc) {

		//해당 선거의 후보신청 고유번호를 받아오는 메소드
		int electVoteCndtSignupSeq = svd.selectUserElectVoteCndtSignupSeq(sqlSession, evc);
		System.out.println("service electVoteCndtSignupSeq : " + electVoteCndtSignupSeq);

		//해당 후보를 등록처리하고 정보 update하는 메소드
		evc.setElectVoteCndtSignupSeq(electVoteCndtSignupSeq);
		int result = svd.updateElectionVoteCandidate(sqlSession, evc);

		return result;

	}
	//해당 투표 정보 담아오는 메소드
	@Override
	public GeneralVote selectOneGeneralVote(int voteSeq) {

		GeneralVote gv = svd.selectOneGeneralVote(sqlSession, voteSeq);

		return gv;

	}
	//해당 투표에 등록된 후보 담아오는 메소드
	@Override
	public ArrayList selectAllGeneralVoteCandidate(int voteSeq) {

		ArrayList candidateListGen = svd.selectAllGeneralVoteCandidate(sqlSession, voteSeq);

		return candidateListGen;

	}
	//입력받은 정보의 거주자가 있는지 확인하는 메소드
	@Override
	public int selectConfirmResident(ResidentVO rs) {

		//일반 세대주 vs 복수 세대주 구분하는 메소드
		int kind = svd.selectKindResident(sqlSession, rs);
		int result;

		if(kind == 0) {
			//해당동에 가입되어있는 세대주 없음
			result = 0;
		}else if(kind == 1) {
			//해당동에 가입되어있는 세대주 한명
			//일반세대주 입력이름 매치하는 메소드
			int result2 = svd.selectConfirmResident(sqlSession, rs);
			if(result2 > 0) {
				//매치됨
				result = 1;
			}else {
				//매치안됨
				result = 1;
			}
		}else {
			//해당동에 가입되어있는 세대주 여러명
			//복수 세대주 중 투표권을 가지고 있는 세대주 매치하는 메소드
			int result3 = svd.selectConfirmResidents(sqlSession, rs);
			if(result3 > 0) {
				//매치됨
				result = 1;
			}else {
				//매치안됨
				result = 1;
			}
		}


		result = svd.selectConfirmResident(sqlSession, rs);

		return result;

	}
	//해당 선거에 등록된 후보신청서 리스트 담아오는 메소드
	@Override
	public ArrayList selectAllElectionVoteCandidateApply(int electVoteSeq) {

		ArrayList candidateApplyList = svd.selectAllElectionVoteCandidateApply(sqlSession, electVoteSeq);

		return candidateApplyList;

	}
	//해당 신청서 세부내역 담아오는 메소드
	@Override
	public ElectionVoteCandidate selectOneElectionVoteCandidate(int electVoteCndtSignupSeq) {

		ElectionVoteCandidate evc = svd.selectOneElectionVoteCandidate(sqlSession, electVoteCndtSignupSeq);

		return evc;

	}
	//해당 신청서 경력사항 리스트 담아오는 메소드
	@Override
	public ArrayList selectAllElectionVoteCadidateCareer(int electVoteCndtSignupSeq) {

		ArrayList careerList = svd.selectAllElectionVoteCadidateCareer(sqlSession, electVoteCndtSignupSeq);

		return careerList;

	}
}
