package com.kh.onepart.resident.convenience.reservate_facility.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.resident.convenience.reservate_facility.model.service.ReservationService;
import com.kh.onepart.resident.convenience.reservate_facility.model.vo.Reservation;

@Controller
public class ReservateFacilityController {
	@Autowired
	private ReservationService rs;

	@RequestMapping("/resident/menuReservateFacility")
	public ModelAndView moveReservation(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/menuReservateFacility");

		// 단지내 모든 시설물 리스트 불러오는 메소드
		ArrayList list = rs.selectAllReservation();

		mv.addObject("list", list);
		mv.setViewName("/resident/convenience/reservate_facility/reservation_main");

		return mv;
	}

	@RequestMapping("/resident/returnMain")
	public ModelAndView returnMain(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/menuReservateFacility");

		// 단지내 모든 시설물 리스트 불러오는 메소드
		ArrayList list = rs.selectAllReservation();

		mv.addObject("list", list);
		mv.setViewName("/resident/convenience/reservate_facility/reservation_main");

		return mv;
	}

	@RequestMapping("/resident/reservateGeneral")
	public ModelAndView moveReservation_reservateGeneral(ModelAndView mv, int facSeq) {
		System.out.println("/menuVote");

		//해당 시설물번호의 상세정보 불러오는 메소드
		Reservation reserv = rs.selectOneReservation(facSeq);

		System.out.println("reserv : " + reserv);

		mv.addObject("reserv", reserv);
		mv.setViewName("/resident/convenience/reservate_facility/reservation_general");

		return mv;
	}

	@RequestMapping("/resident/reservatenSeat")
	public ModelAndView moveReservation_reservatenSeat(ModelAndView mv, int facSeq) {
		System.out.println("/menuVote");

		//해당 시설물번호의 상세정보 불러오는 메소드
		Reservation reserv = rs.selectOneReservation(facSeq);

		mv.addObject("reserv", reserv);
		mv.setViewName("/resident/convenience/reservate_facility/reservation_seat");

		return mv;
	}
}
