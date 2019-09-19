package com.kh.onepart.manager.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.manager.main.model.service.MainService;
import com.kh.onepart.manager.main.model.vo.ResidentStatusVO;

@Controller
public class ManagerMainController {

	@Autowired
	MainService mainService;

	/**
	 * 메인페이지 이동
	 * @return
	 */
	@RequestMapping("/manager/menuMain")
	public String moveMain() {
		System.out.println("in moveMain");

		return "/manager/main/main";
	}


	/**
	 * 메인페이지 - 입주민 통계
	 * @return
	 */
	@RequestMapping("/manager/main/residentStatus")
	public ModelAndView residentStatus(ModelAndView modelAndView) {
		System.out.println("in residentStatus");

		modelAndView.setViewName("jsonView");

		// 입주 현황
		ResidentStatusVO residentStatusVO = mainService.residentStatus();

		// 총 입주민 인원 수
		int residentTotalCount = mainService.residentTotalCount();

		// 한 가구당 인원 수
		double countPerHousehold = mainService.countPerHousehold();

		// 등록 차량 수
		int enrollCarCount = mainService.enrollCarCount();


		residentStatusVO.setResidentTotalCount(residentTotalCount);
		residentStatusVO.setCountPerHousehold(countPerHousehold);
		residentStatusVO.setEnrollCarCount(enrollCarCount);

		System.out.println(residentStatusVO);

		modelAndView.addObject("residentStatusVO", residentStatusVO);

		return modelAndView;
	}
}

