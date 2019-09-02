package com.kh.onepart.manager.facility.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FacilityController {

	@RequestMapping("/manager/menuFacility")
	public String menuFacility() {
		System.out.println("/menuFacility");
		return "/manager/facility/facility_main";
	}

	@RequestMapping("/manager/newFacility_general")
	public String newFacility_general() {
		System.out.println("/menuFacility");
		return "/manager/facility/facility_new_general";
	}

	@RequestMapping("/manager/newFacility_seat")
	public String newFacility_seat() {
		System.out.println("/menuFacility");
		return "/manager/facility/facility_new_seat";
	}

	@RequestMapping("/manager/facility_modify_general")
	public String facility_modify_general() {
		System.out.println("/menuFacility");
		return "/manager/facility/facility_modify_general";
	}

	@RequestMapping("/manager/facility_modify_seat")
	public String facility_modify_seat() {
		System.out.println("/menuFacility");
		return "/manager/facility/facility_modify_seat";
	}
}
