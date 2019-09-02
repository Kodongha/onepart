package com.kh.onepart.resident.convenience.reservate_facility.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservateFacilityController {
	
	@RequestMapping("/resident/menuReservateFacility")
	public String moveReservation() {
		System.out.println("/menuVote");
		return "/resident/convenience/reservate_facility/reservation_main";
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
