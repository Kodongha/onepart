package com.kh.onepart.resident.my_apartment.survey.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.my_apartment.survey.model.dao.ResidentSurveyDao;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveyMainVO;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveyPrtcpt;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveySelected;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstn;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstnOption;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyVO;

@Service
public class ResidentSurveyServiceImpl implements ResidentSurveyService {

	@Autowired
	ResidentSurveyDao residentSurveyDao;

	@Autowired
	private SqlSessionTemplate sqlSession;

	/** 설문조사 진행 중 카운트 - 설문조사 메인 */
	@Override
	public int ingSurveyListCount(RequestSurveyMainVO requestSurveyMainVO) {
		// TODO Auto-generated method stub

		int surveyIngListCount = residentSurveyDao.selectIngSurveyListCount(sqlSession, requestSurveyMainVO);

		return surveyIngListCount;
	}

	/** 설문조사 진행 중 리스트 - 설문조사 메인 */
	@Override
	public ArrayList<SurveyVO> ingSurveyList(RequestSurveyMainVO requestSurveyMainVO) {
		// TODO Auto-generated method stub

		ArrayList<SurveyVO> ingSurveyVOList = residentSurveyDao.selectIngSurveyList(sqlSession, requestSurveyMainVO);

		return ingSurveyVOList;
	}

	/** 설문조사 상세정보 */
	@Override
	public ArrayList<Object> selectSurveyDetail(int surveySeq) {
		// TODO Auto-generated method stub
		ArrayList<Object> surveyDetailList = new ArrayList<Object>();

		// 설문조사 기본 정보
		SurveyVO surveyVO = residentSurveyDao.selectSurveyBasicInfo(sqlSession, surveySeq);

		// 설문조사 문제 정보
		ArrayList<SurveyQstn> surveyQstnList = residentSurveyDao.selectSurveyQstnList(sqlSession, surveySeq);

		// 설문조사 옵션 정보
		ArrayList<SurveyQstnOption> surveyQstnOptionList = residentSurveyDao.selectsurveyQstnOptionList(sqlSession, surveyQstnList);


		System.out.println("==================== 상세정보 ====================");
		System.out.println("surveyVO ::: " + surveyVO);
		System.out.println("surveyQstnList ::: " + surveyQstnList);
		System.out.println("surveyQstnOptionList ::: " + surveyQstnOptionList);

		surveyDetailList.add(surveyVO);
		surveyDetailList.add(surveyQstnList);
		surveyDetailList.add(surveyQstnOptionList);

		return surveyDetailList;
	}

	/** 설문조사 참여정보 삽입 */
	@Override
	public void insertsurveyPrtcpt(RequestSurveyPrtcpt requestSurveyPrtcpt,
			ArrayList<RequestSurveySelected> surveySelectedList) {
		// TODO Auto-generated method stub
		System.out.println("insertsurveyPrtcpt service in!!!!");

		// 설문조사 참여 기본정보 삽입
		int surveyPrtcptSeq = residentSurveyDao.insertSurveyPrtcpt(sqlSession, requestSurveyPrtcpt);
		System.out.println("surveyPrtcptSeq ::: " + surveyPrtcptSeq);

		for(int i=0; i<surveySelectedList.size(); i++) {
			surveySelectedList.get(i).setSurveyPrtcptSeq(surveyPrtcptSeq);
			// 설문조사 참여 답변정보 삽입
			residentSurveyDao.insertsurveySelected(sqlSession, surveySelectedList.get(i));
		}
	}

}
