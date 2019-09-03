package com.kh.onepart.manager.facility.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.manager.facility.model.dao.FacliltyDao;
import com.kh.onepart.manager.facility.model.vo.FacReservation;

@Service
public class FacliltyServiceImpl implements FacliltyService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private FacliltyDao fd;

	//아파트 시설물 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllReservation() {

		ArrayList list = fd.selectAllReservation(sqlSession);

		return list;
	}
	//모든시설물 예약 리스트 불러오는 메소드
	@Override
	public ArrayList selectAllUserReservation() {

		ArrayList reservationList = fd.selectAllUserReservation(sqlSession);

		return reservationList;
	}
	//해당 시설물 예약 내역 불러오는 메소드
	@Override
	public FacReservation selectOneUserReservation(int facRsrvSeq) {

		FacReservation fr = fd.selectOneUserReservation(sqlSession, facRsrvSeq);

		return fr;

	}

}
