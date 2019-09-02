package com.kh.onepart.resident.convenience.reservate_facility.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.resident.convenience.reservate_facility.model.vo.Reservation;

public interface ReservationDao {
	// 단지내 모든 시설물 리스트 불러오는 메소드
	ArrayList<Reservation> selectAllReservation(SqlSessionTemplate sqlSession);

}
