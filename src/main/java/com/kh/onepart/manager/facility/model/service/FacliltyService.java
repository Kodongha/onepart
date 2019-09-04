package com.kh.onepart.manager.facility.model.service;

import java.util.ArrayList;

import com.kh.onepart.manager.facility.model.vo.FacReservation;

public interface FacliltyService {
	//아파트 시설물 리스트 불러오는 메소드
	ArrayList selectAllReservation();
	//모든시설물 예약 리스트 불러오는 메소드
	ArrayList selectAllUserReservation();
	//해당 시설물 예약 내역 불러오는 메소드
	FacReservation selectOneUserReservation(int facRsrvSeq);
	//해당 예약건 예약완료 처리하는 메소드
	int updatesuccessReservation(int facRsrvSeq);
	//해당 예약건 예약반려 처리하는 메소드
	int updatefailReservation(int facRsrvSeq);

}
