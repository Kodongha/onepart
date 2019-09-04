package com.kh.onepart.manager.facility.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.manager.facility.model.vo.FacReservation;

public interface FacliltyDao {
	//아파트 시설물 리스트 불러오는 메소드
	ArrayList selectAllReservation(SqlSessionTemplate sqlSession);
	//모든시설물 예약 리스트 불러오는 메소드
	ArrayList selectAllUserReservation(SqlSessionTemplate sqlSession);
	//해당 시설물 예약 내역 불러오는 메소드
	FacReservation selectOneUserReservation(SqlSessionTemplate sqlSession, int facRsrvSeq);
	//해당 예약건 예약완료 처리하는 메소드
	int updatesuccessReservation(SqlSessionTemplate sqlSession, int facRsrvSeq);
	//해당 예약건 예약반려 처리하는 메소드
	int updatefailReservation(SqlSessionTemplate sqlSession, int facRsrvSeq);

}
