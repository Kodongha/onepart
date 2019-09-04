package com.kh.onepart.manager.survey.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstn;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstnOption;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyVO;
import com.kh.onepart.manager.survey.model.vo.SurveyVO;

@Repository
public class ManagerSurveyDaoImple implements ManagerSurveyDao{

	/** 설문조사 검색 */
	@Override
	public ArrayList<SurveyVO> selectSearchSurveyList(SqlSessionTemplate sqlSession, SurveyVO requestSurveyVO) {
		// TODO Auto-generated method stub

		ArrayList<SurveyVO> surveyVOList = (ArrayList) sqlSession.selectList("managerSurvey.selectSearchSurveyList", requestSurveyVO);

		return surveyVOList;
	}

	/** 설문조사 등록 - INSERT SURVEY */
	@Override
	public int insertSurvey(SqlSessionTemplate sqlSession, RequestSurveyVO requestSurveyVO) {
		// TODO Auto-generated method stub

		sqlSession.insert("managerSurvey.insertSurvey", requestSurveyVO);
		int surveySeq = requestSurveyVO.getSurveySeq();
		System.out.println("surveySeq:::" + surveySeq);

		return surveySeq;

	}

	/** 설문조사 등록 - INSERT SURVEY_QSTN */
	@Override
	public int insertsurveyQstn(SqlSessionTemplate sqlSession, RequestSurveyQstn requestSurveyQstn) {
		// TODO Auto-generated method stub

		sqlSession.insert("managerSurvey.insertSurveyQstn", requestSurveyQstn);
		int surveyQstnSeq = requestSurveyQstn.getSurveyQstnSeq();
		System.out.println("surveyQstnSeq::" + surveyQstnSeq);

		return surveyQstnSeq;
	}

	/** 설문조사 등록 - SURVEY_QSTN_OPTION */
	@Override
	public void insertSurveyQstnOption(SqlSessionTemplate sqlSession, RequestSurveyQstnOption requestSurveyQstnOption) {
		// TODO Auto-generated method stub

		sqlSession.insert("managerSurvey.insertSurveyQstnOption", requestSurveyQstnOption);

	}



}
