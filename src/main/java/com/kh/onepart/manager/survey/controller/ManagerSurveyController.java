package com.kh.onepart.manager.survey.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.onepart.manager.survey.model.service.ManagerSurveyService;

@Controller
public class ManagerSurveyController {

	@Autowired
	ManagerSurveyService surveyService;

	@RequestMapping("/manager/menuSurvey")
	public String moveAccountPage() {
		System.out.println("in manager/menuSurvey");
		return "manager/survey/surveyMain";
	}

}
