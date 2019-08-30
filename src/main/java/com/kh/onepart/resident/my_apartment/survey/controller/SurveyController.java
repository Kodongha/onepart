package com.kh.onepart.resident.my_apartment.survey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurveyController {

	@RequestMapping("/resident/menuSurvey")
	public String moveSurvey() {
		System.out.println("/menuNotice");
		return "/resident/my_apartment/survey/survey";
	}
	
}
