package com.kh.onepart.resident.convenience.reservate_facility.model.service;

import java.util.ArrayList;

import com.kh.onepart.resident.convenience.reservate_facility.model.vo.Reservation;

public interface ReservationService {
	// 단지내 모든 시설물 리스트 불러오는 메소드
	ArrayList<Reservation> selectAllReservation();
	//해당 시설물번호의 상세정보 불러오는 메소드
	Reservation selectOneReservation(int facSeq);

}
