package com.kh.onepart.manager.survey.model.service;

import java.util.ArrayList;

import com.kh.onepart.manager.survey.model.SurveyVO;

public interface ManagerSurveyService {

	/**
	 * 설문조사 검색
	 * @param requestSurveyVO
	 * @return
	 */
	ArrayList<SurveyVO> searchSurvey(SurveyVO requestSurveyVO);



}
