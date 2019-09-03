package com.kh.onepart.manager.survey.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.onepart.manager.survey.model.SurveyVO;
import com.kh.onepart.manager.survey.model.service.ManagerSurveyService;

@Controller
public class ManagerSurveyController {

	@Autowired
	ManagerSurveyService surveyService;

	/**
	 * 설문조사 메인페이지
	 * @return
	 */
	@RequestMapping("/manager/menuSurvey")
	public String moveAccountPage() {
		System.out.println("in manager/menuSurvey");
		return "manager/survey/surveyMain";
	}


	/**
	 * 검색버튼 클릭
	 * @param requestSurveyVO
	 * @return
	 */
	@RequestMapping(value="/manager/searchSurvey")
	public String searchSurvey(SurveyVO requestSurveyVO) {
		System.out.println("in manager/searchSurvey");
		System.out.println("requestSurveyVO:::" + requestSurveyVO);

		ArrayList<SurveyVO> surveyVOList = surveyService.searchSurvey(requestSurveyVO);

		return "";
	}


}
