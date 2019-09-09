package com.kh.onepart.resident.my_apartment.survey.model.service;

import java.util.ArrayList;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveyPrtcpt;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveySelected;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyVO;


public interface ResidentSurveyService {

	/**
	 * 설문조사 진행 중 카운트 - 설문조사 메인
	 * @return
	 */
	public int ingSurveyListCount();

	/**
	 * 설문조사 진행 중 리스트 - 설문조사 메인
	 * @param pi
	 * @return
	 */
	public ArrayList<SurveyVO> ingSurveyList(PageInfo pi);

	/**
	 * 설문조사 진행 예정 카운트 - 설문조사 메인
	 * @return
	 */
	public int expectedSurveyListCount();

	/**
	 * 설문조사 진행 예정 리스트 - 설문조사 메인
	 * @param pi
	 * @return
	 */
	public ArrayList<SurveyVO> expectedSurveyList(PageInfo pi);

	/**
	 * 설문조사 종료 카운트 - 설문조사 메인
	 * @param pi
	 * @return
	 */
	public int finishSurveyListCount();

	/**
	 * 설문조사 진행 종료 리스트 - 설문조사 메인
	 * @return
	 */
	public ArrayList<SurveyVO> finishSurveyList(PageInfo pi);


	/**
	 * 설문조사 상세정보
	 * @param surveySeq
	 * @return
	 */
	public ArrayList<Object> selectSurveyDetail(int surveySeq);

	/**
	 * 설문조사 참여정보 삽입
	 * @param requestSurveyPrtcpt
	 * @param surveySelectedList
	 */
	public void insertsurveyPrtcpt(RequestSurveyPrtcpt requestSurveyPrtcpt,
			ArrayList<RequestSurveySelected> surveySelectedList);

}
