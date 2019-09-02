package com.kh.onepart.resident.convenience.reservate_facility.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.resident.convenience.reservate_facility.model.dao.ReservationDao;
import com.kh.onepart.resident.convenience.reservate_facility.model.vo.Reservation;

@Service
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ReservationDao rd;

	// 단지내 모든 시설물 리스트 불러오는 메소드
	@Override
	public ArrayList<Reservation> selectAllReservation() {

		ArrayList<Reservation> list = rd.selectAllReservation(sqlSession);

		return list;
	}

}
