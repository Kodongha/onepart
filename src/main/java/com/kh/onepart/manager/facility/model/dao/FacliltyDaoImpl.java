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

}
