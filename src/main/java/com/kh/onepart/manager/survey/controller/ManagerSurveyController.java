package com.kh.onepart.manager.survey.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.onepart.manager.survey.model.service.ManagerSurveyService;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyAndSurveyQstnVO;
import com.kh.onepart.manager.survey.model.vo.SurveyVO;

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

	/**
	 * 설문조사 등록
	 * @param resultJson
	 * @return
	 */
	@RequestMapping(value="/manager/insertSurvey")
	public String insertSurvey(RequestSurveyAndSurveyQstnVO requestSurveyVO) {
		System.out.println("in manager/insertSurvey");

		System.out.println("resultJson :: " + requestSurveyVO);

		return "";
	}


}
