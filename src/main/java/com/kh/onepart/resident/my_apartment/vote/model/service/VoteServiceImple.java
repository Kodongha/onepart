package com.kh.onepart.resident.my_apartment.vote.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.resident.my_apartment.vote.model.dao.VoteDao;
import com.kh.onepart.resident.my_apartment.vote.model.vo.GeneralVote;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VoteList;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VotePrtcpt;
import com.kh.onepart.resident.my_apartment.vote.model.vo.VoteSelected;

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
	//선택한 선거의 상세정보를 불러오는 메소드 (르그인 유저의 현황도 함께)
	@Override
	public GeneralVote selectOneGeneralVoteInfo(int voteSeq) {

		GeneralVote vote = vd.selectOneGeneralVoteInfo(sqlSession, voteSeq);

		return vote;

	}
	//로그인유저의 현황을 불러오는 메소드
	@Override
	public VoteList selectOneGeneralVoteUserInfo(VoteList info) {

		VoteList voteUser = vd.selectOneGeneralVoteUserInfo(sqlSession, info);

		return voteUser;

	}
	//선택한 선거의 후보 리스트를 불러오는 메소드
	@Override
	public ArrayList selectAllCandidateList(int voteSeq) {

		ArrayList candidateList = vd.selectAllCandidateList(sqlSession, voteSeq);

		return candidateList;

	}
	//해당 투표의 수정내역 update하는 메소드
	@Override
	public int updateGeneralVote(VotePrtcpt vp, int gnrVoteCndtEnrollSeq) {

		//해당 유저가 참여한 투표참여 고유번호 받아오는 메소드
		int votePrtcptSeq = vd.selectUserVotePrtcptSeq(sqlSession, vp);
		System.out.println("service votePrtcptSeq : " + votePrtcptSeq);
		//받아온 투표참여 고유번호에 대한 선택내역 수정내역으로 update하는 메소드
		VoteSelected vs = new VoteSelected();
		vs.setVotePrtcptSeq(votePrtcptSeq);
		vs.setGnrVoteCndtEnrollSeq(gnrVoteCndtEnrollSeq);
		int result = vd.updateGeneralVote(sqlSession, vs);

		return result;
	}
	//해당 투표의 수정내역 insert하는 메소드
	@Override
	public int insertGeneralVote(VotePrtcpt vp, int gnrVoteCndtEnrollSeq) {

		//해당 투표내역이 insert가 되고 그에 대한 currentval값 받아오는 메소드
		int votePrtcptSeq = vd.insertCurrentVotePrtcptSeq(sqlSession, vp);

		//해당 투표내역에 선택된 후보내역 insert 하는 메소드
		VoteSelected vs = new VoteSelected();
		vs.setVotePrtcptSeq(votePrtcptSeq);
		vs.setGnrVoteCndtEnrollSeq(gnrVoteCndtEnrollSeq);
		int result  = vd.insertGeneralVote(sqlSession, vs);

		return result;
	}


}
