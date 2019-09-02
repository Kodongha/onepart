package com.kh.onepart.resident.convenience.reservate_facility.controller;

import java.util.ArrayList;

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
	public ModelAndView moveReservation(ModelAndView mv) {
		System.out.println("/menuReservateFacility");
		
		// 단지내 모든 시설물 리스트 불러오는 메소드
		ArrayList<Reservation> list = rs.selectAllReservation();

		mv.addObject("list", list);
		mv.setViewName("/resident/convenience/reservate_facility/reservation_main");

		return mv;
	}

	@RequestMapping("/resident/reservateGeneral")
	public String moveReservation_reservateGeneral() {
		System.out.println("/menuVote");
		return "/resident/convenience/reservate_facility/reservation_general";
	}

	@RequestMapping("/resident/reservatenSeat")
	public String moveReservation_reservatenSeat() {
		System.out.println("/menuVote");
		return "/resident/convenience/reservate_facility/reservation_seat";
	}
}
