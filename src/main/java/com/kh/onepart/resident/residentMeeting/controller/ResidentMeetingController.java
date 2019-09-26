package com.kh.onepart.resident.residentMeeting.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.resident.residentMeeting.service.ResidentMeetingService;
import com.kh.onepart.resident.residentMeeting.vo.ResidentAllInfo;
import com.kh.onepart.resident.residentMeeting.vo.ResidentMeetingVO;

@Controller
public class ResidentMeetingController {

	@Autowired
	ResidentMeetingService residentMeetingService;

	/**
	 * 입주자 대표 회의 메인페이지
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("resident/menuMeetingInfo")
	public ModelAndView moveMenuMeetingInfo(ModelAndView modelAndView) {
		System.out.println("resident/menuMeetingInfo in");

		// 입주민 정보 가져오기
		ArrayList<ResidentAllInfo> residentVOList = residentMeetingService.selectResidentVOList();
		System.out.println("residentVOList : " + residentVOList);
		// 회의 정보 가져오기
		ArrayList<ResidentMeetingVO> residentMeetingVOList = residentMeetingService.selectMeetingInfo();
		System.out.println("ResidentMeetingVOList :: " + residentMeetingVOList);

		modelAndView.addObject("residentVOList", residentVOList);
		modelAndView.addObject("residentMeetingVOList", residentMeetingVOList);
		modelAndView.setViewName("resident/resident_meeting/residentMeetingMain");

		return modelAndView;
	}

	/**
	 * 입주자 대표 회워
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("resident/residentMeetingRegister")
	public ModelAndView moveResidentMeetingRegister(ModelAndView modelAndView) {
		modelAndView.setViewName("resident/resident_meeting/residentMeetingRegister");
		return modelAndView;
	}
}
