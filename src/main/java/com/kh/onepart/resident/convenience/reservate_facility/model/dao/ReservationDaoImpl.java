package com.kh.onepart.resident.convenience.reservate_facility.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.resident.convenience.reservate_facility.model.vo.Reservation;

@Repository
public class ReservationDaoImpl implements ReservationDao{
	// 단지내 모든 시설물 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllReservation(SqlSessionTemplate sqlSession) {

		ArrayList list = (ArrayList) sqlSession.selectList("reservation.selectAllReservation");

		return list;
	}
	//해당 시설물번호의 상세정보 불러오는 메소드
	@Override
	public Reservation selectOneReservation(SqlSessionTemplate sqlSession, int facSeq) {

		Reservation reserv = sqlSession.selectOne("reservation.selectOneReservation", facSeq);

		return reserv;
	}
}
