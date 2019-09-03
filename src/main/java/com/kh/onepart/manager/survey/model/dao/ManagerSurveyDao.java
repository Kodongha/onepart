package com.kh.onepart.manager.survey.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.manager.survey.model.SurveyVO;

public interface ManagerSurveyDao {

	/**
	 * 설문조사 검색
	 * @param sqlSession
	 * @param requestSurveyVO
	 * @return
	 */
	ArrayList<SurveyVO> selectSearchSurveyList(SqlSessionTemplate sqlSession, SurveyVO requestSurveyVO);

}
