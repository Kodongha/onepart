package com.kh.onepart.resident.my_apartment.survey.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstn;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstnOption;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyVO;

public interface ResidentSurveyDao {

	/**
	 * 설문조사 진행 중 카운트 - 설문조사 메인
	 * @param sqlSession
	 * @return
	 */
	int selectIngSurveyListCount(SqlSessionTemplate sqlSession);

	/**
	 * 설문조사 진행 중 리스트 - 설문조사 메인
	 * @param sqlSession
	 * @param pi
	 * @return
	 */
	ArrayList<SurveyVO> selectIngSurveyList(SqlSessionTemplate sqlSession, PageInfo pi);

	/**
	 * 설문조사 진행 예정 카운트 - 설문조사 메인
	 * @param sqlSession
	 * @return
	 */
	int expectedSurveyListCount(SqlSessionTemplate sqlSession);

	/**
	 * 설문조사 진행 예정 리스트 - 설문조사 메인
	 * @param sqlSession
	 * @param pi
	 * @return
	 */
	ArrayList<SurveyVO> expectedSurveyList(SqlSessionTemplate sqlSession, PageInfo pi);

	/**
	 * 설문조사 종료 카운트 - 설문조사 메인
	 * @param sqlSession
	 * @return
	 */
	int finishSurveyListCount(SqlSessionTemplate sqlSession);

	/**
	 * 설문조사 종료 리스트 - 설문조사 메인
	 * @param sqlSession
	 * @return
	 */
	ArrayList<SurveyVO> finishSurveyList(SqlSessionTemplate sqlSession, PageInfo pi);

	/**
	 * 설문조사 기본 정보 가져오기
	 * @param sqlSession
	 * @param surveySeq
	 * @return
	 */
	SurveyVO selectSurveyBasicInfo(SqlSessionTemplate sqlSession, int surveySeq);

	/**
	 * 설문조사 문제 정보 가져오기
	 * @param sqlSession
	 * @param surveySeq
	 * @return
	 */
	ArrayList<SurveyQstn> selectSurveyQstnList(SqlSessionTemplate sqlSession, int surveySeq);

	/**
	 * 설문조사 옵션 정보 가져오기
	 * @param sqlSession
	 * @param surveyQstnList
	 * @return
	 */
	ArrayList<SurveyQstnOption> selectsurveyQstnOptionList(SqlSessionTemplate sqlSession, ArrayList<SurveyQstn> surveyQstnList);

}