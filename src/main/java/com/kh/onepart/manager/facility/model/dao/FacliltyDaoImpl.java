package com.kh.onepart.manager.facility.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.manager.facility.model.vo.FacReservation;

@Repository
public class FacliltyDaoImpl implements FacliltyDao{
	//아파트 시설물 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllReservation(SqlSessionTemplate sqlSession) {

		ArrayList list = (ArrayList) sqlSession.selectList("faclilty.selectAllReservation");

		return list;

	}
	//모든시설물 예약 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllUserReservation(SqlSessionTemplate sqlSession) {

		ArrayList reservationList = (ArrayList) sqlSession.selectList("faclilty.selectAllUserReservation");

		return reservationList;
	}
	//해당 시설물 예약 내역 불러오는 메소드
	@Override
	public FacReservation selectOneUserReservation(SqlSessionTemplate sqlSession, int facRsrvSeq) {

		FacReservation fr = sqlSession.selectOne("faclilty.selectOneUserReservation", facRsrvSeq);

		return fr;
	}
	//해당 예약건 예약완료 처리하는 메소드
	@Override
	public int updatesuccessReservation(SqlSessionTemplate sqlSession, int facRsrvSeq) {

		int result = sqlSession.update("faclilty.updatesuccessReservation", facRsrvSeq);

		return result;
	}
	//해당 예약건 예약반려 처리하는 메소드
	@Override
	public int updatefailReservation(SqlSessionTemplate sqlSession, int facRsrvSeq) {

		int result = sqlSession.update("faclilty.updatefailReservation", facRsrvSeq);

		return result;

	}

}
