package com.kh.onepart.manager.survey.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstn;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstnOption;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyVO;
import com.kh.onepart.manager.survey.model.vo.SurveyVO;

public interface ManagerSurveyDao {

	/**
	 * 설문조사 검색
	 * @param sqlSession
	 * @param requestSurveyVO
	 * @return
	 */
	ArrayList<SurveyVO> selectSearchSurveyList(SqlSessionTemplate sqlSession, SurveyVO requestSurveyVO);

	/**
	 * 설문조사 등록 - INSERT SURVEY
	 * @param sqlSession
	 * @param requestSurveyVO
	 */
	int insertSurvey(SqlSessionTemplate sqlSession, RequestSurveyVO requestSurveyVO);

	/**
	 * 설문조사 등록  - INSERT SURVEY_QSTN
	 * @param sqlSession
	 * @param requestSurveyQstn
	 * @return
	 */
	int insertsurveyQstn(SqlSessionTemplate sqlSession, RequestSurveyQstn requestSurveyQstn);

	/**
	 * 설문조사 등록 - INSERT SURVEY_QSTN_OPTION
	 * @param sqlSession
	 * @param requestSurveyQstnOption
	 */
	void insertSurveyQstnOption(SqlSessionTemplate sqlSession, RequestSurveyQstnOption requestSurveyQstnOption);

}
