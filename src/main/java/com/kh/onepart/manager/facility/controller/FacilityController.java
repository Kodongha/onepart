package com.kh.onepart.manager.facility.controller;

import java.util.ArrayList;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.manager.facility.model.service.FacliltyService;
import com.kh.onepart.manager.facility.model.vo.FacReservation;

@Controller
public class FacilityController {
	@Autowired
	private FacliltyService fs;

	@RequestMapping("/manager/menuFacility")
	public ModelAndView menuFacility(ModelAndView mv) {
		System.out.println("/menuFacility");

		//아파트 시설물 리스트 불러오는 메소드
		ArrayList list = fs.selectAllReservation();

		//모든시설물 예약 리스트 불러오는 메소드
		ArrayList reservationList = fs.selectAllUserReservation();

		mv.addObject("reservationList", reservationList);
		mv.addObject("list", list);
		mv.setViewName("/manager/facility/facility_main");

		return mv;
	}

	@RequestMapping("/manager/facility_reservationDetail")
	public ModelAndView facility_reservationDetail(ModelAndView mv, int facRsrvSeq) {
		System.out.println("facRsrvSeq : " + facRsrvSeq);

		//해당 시설물 예약 내역 불러오는 메소드
		FacReservation fr = fs.selectOneUserReservation(facRsrvSeq);

		mv.addObject("fr", fr);
		mv.setViewName("/manager/facility/facility_detail");

		return mv;
	}

	@RequestMapping("/manager/newFacility_general")
	public String newFacility_general(MultipartHttpServletRequest req) {
		System.out.println("/menuFacility");
		//System.out.println("reservation : " + Reservation);
		Iterator<String> itr =  req.getFileNames();

		if(itr.hasNext()) {
			System.out.println("파일명 : " + itr);
		}

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

	@RequestMapping("/manager/successReservation")
	public ModelAndView successReservation(ModelAndView mv, int facRsrvSeq) {
		System.out.println("/menuFacility");

		//해당 예약건 예약완료 처리하는 메소드
		int result = fs.updatesuccessReservation(facRsrvSeq);

		mv.setViewName("jsonView");

		return mv;
	}

	@RequestMapping("/manager/failReservation")
	public ModelAndView failReservation(ModelAndView mv, int facRsrvSeq) {
		System.out.println("/menuFacility");

		//해당 예약건 예약반려 처리하는 메소드
		int result = fs.updatefailReservation(facRsrvSeq);

		mv.setViewName("jsonView");

		return mv;
	}
}
