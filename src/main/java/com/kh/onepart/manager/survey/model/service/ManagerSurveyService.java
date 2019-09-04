package com.kh.onepart.manager.survey.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstn;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstnOption;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyVO;
import com.kh.onepart.manager.survey.model.vo.SurveyVO;

public interface ManagerSurveyService {

	/**
	 * 설문조사 검색
	 * @param requestSurveyVO
	 * @return
	 */
	ArrayList<SurveyVO> searchSurvey(SurveyVO requestSurveyVO);


	/**
	 * 설문조사 등록
	 * @param requestSurveyVO
	 * @param requestSurveyQstn
	 * @param surveyQstnOption
	 * @return
	 */
	void insertSurvey(RequestSurveyVO requestSurveyVO, ArrayList<RequestSurveyQstn> requestSurveyQstn,
			List<RequestSurveyQstnOption> surveyQstnOption);



}
