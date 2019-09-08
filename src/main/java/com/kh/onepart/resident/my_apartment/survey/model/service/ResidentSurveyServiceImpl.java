package com.kh.onepart.resident.my_apartment.survey.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.my_apartment.survey.model.dao.ResidentSurveyDao;
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
	public int ingSurveyListCount() {
		// TODO Auto-generated method stub

		int surveyIngListCount = residentSurveyDao.selectIngSurveyListCount(sqlSession);

		return surveyIngListCount;
	}

	/** 설문조사 진행 중 리스트 - 설문조사 메인 */
	@Override
	public ArrayList<SurveyVO> ingSurveyList(PageInfo pi) {
		// TODO Auto-generated method stub

		ArrayList<SurveyVO> ingSurveyVOList = residentSurveyDao.selectIngSurveyList(sqlSession, pi);

		return ingSurveyVOList;
	}

	/** 설문조사 진행 예정 카운트 - 설문조사 메인 */
	@Override
	public int expectedSurveyListCount() {
		// TODO Auto-generated method stub

		int surveyIngListCount = residentSurveyDao.expectedSurveyListCount(sqlSession);

		return surveyIngListCount;
	}

	/** 설문조사 진행 예정 리스트 - 설문조사 메인 */
	@Override
	public ArrayList<SurveyVO> expectedSurveyList(PageInfo pi) {
		// TODO Auto-generated method stub
		ArrayList<SurveyVO> ingSurveyVOList = residentSurveyDao.expectedSurveyList(sqlSession, pi);

		return ingSurveyVOList;
	}

	/** 설문조사 종료 카운트 - 설문조사 메인 */
	@Override
	public int finishSurveyListCount() {
		// TODO Auto-generated method stub
		int surveyIngListCount = residentSurveyDao.finishSurveyListCount(sqlSession);

		return surveyIngListCount;
	}

	/** 설문조사 종료 리스트 - 설문조사 메인 */
	@Override
	public ArrayList<SurveyVO> finishSurveyList(PageInfo pi) {
		// TODO Auto-generated method stub
		ArrayList<SurveyVO> ingSurveyVOList = residentSurveyDao.finishSurveyList(sqlSession, pi);

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

}
