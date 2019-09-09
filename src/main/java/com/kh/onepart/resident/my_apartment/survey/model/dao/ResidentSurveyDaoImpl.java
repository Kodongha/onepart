package com.kh.onepart.resident.my_apartment.survey.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveyPrtcpt;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveySelected;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstn;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstnOption;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyVO;

@Repository
public class ResidentSurveyDaoImpl implements ResidentSurveyDao {

	/** 설문조사 진행 중 카운트 - 설문조사 메인 */
	@Override
	public int selectIngSurveyListCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub

		int surveyIngListCount = sqlSession.selectOne("ResidentSurvey.selectIngSurveyListCount");

		return surveyIngListCount;
	}

	/** 설문조사 진행 중 리스트 - 설문조사 메인 */
	@Override
	public ArrayList<SurveyVO> selectIngSurveyList(SqlSessionTemplate sqlSession, PageInfo pi) {
		// TODO Auto-generated method stub

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		ArrayList<SurveyVO> surveyIngList = (ArrayList) sqlSession.selectList("ResidentSurvey.selectSurveyList", null, rowBounds);
		System.out.println("surveyIngList DAO::: " + surveyIngList);
		return surveyIngList;
	}

	/** 설문조사 진행 예정 카운트 - 설문조사 메인 */
	@Override
	public int expectedSurveyListCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		int expectedSurveyListCount = sqlSession.selectOne("ResidentSurvey.expectedSurveyListCount");

		return expectedSurveyListCount;
	}

	/** 설문조사 진행 예정 리스트 - 설문조사 메인 */
	@Override
	public ArrayList<SurveyVO> expectedSurveyList(SqlSessionTemplate sqlSession, PageInfo pi) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		ArrayList<SurveyVO> expectedSurveyList = (ArrayList) sqlSession.selectList("ResidentSurvey.expectedSurveyList", null, rowBounds);
		return expectedSurveyList;
	}

	/** 설문조사 종료 카운트 - 설문조사 메인 */
	@Override
	public int finishSurveyListCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		int expectedSurveyListCount = sqlSession.selectOne("ResidentSurvey.finishSurveyListCount");

		return expectedSurveyListCount;
	}

	/** 설문조사 종료 리스트 - 설문조사 메인 */
	@Override
	public ArrayList<SurveyVO> finishSurveyList(SqlSessionTemplate sqlSession, PageInfo pi) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		ArrayList<SurveyVO> expectedSurveyList = (ArrayList) sqlSession.selectList("ResidentSurvey.finishSurveyList", null, rowBounds);
		return expectedSurveyList;
	}

	/** 설문조사 상세정보 - 기본정보 */
	@Override
	public SurveyVO selectSurveyBasicInfo(SqlSessionTemplate sqlSession, int surveySeq) {
		// TODO Auto-generated method stub
		SurveyVO surveyVO = sqlSession.selectOne("ResidentSurvey.selectSurveyBasicInfo", surveySeq);

		return surveyVO;
	}

	/** 설문조사 상세정보 - 문제정보 */
	@Override
	public ArrayList<SurveyQstn> selectSurveyQstnList(SqlSessionTemplate sqlSession, int surveySeq) {
		// TODO Auto-generated method stub

		ArrayList<SurveyQstn> surveyQstnList = (ArrayList) sqlSession.selectList("ResidentSurvey.selectSurveyQstnInfo", surveySeq);

		return surveyQstnList;
	}

	/** 설문조사 상세정보 - 옵션정보 */
	@Override
	public ArrayList<SurveyQstnOption> selectsurveyQstnOptionList(SqlSessionTemplate sqlSession,
			ArrayList<SurveyQstn> surveyQstnList) {
		// TODO Auto-generated method stub
		ArrayList<SurveyQstnOption> selectsurveyQstnOptionList = (ArrayList) sqlSession.selectList("ResidentSurvey.selectsurveyQstnOptionList", surveyQstnList);

		return selectsurveyQstnOptionList;
	}

	/** 설문조사 참여 기본정보 삽입 */
	@Override
	public int insertSurveyPrtcpt(SqlSessionTemplate sqlSession, RequestSurveyPrtcpt requestSurveyPrtcpt) {
		// TODO Auto-generated method stub

		sqlSession.insert("ResidentSurvey.insertSurveyPrtcpt", requestSurveyPrtcpt);
		int surveyPrtcptSeq = requestSurveyPrtcpt.getSurveyPrtcptSeq();

		return surveyPrtcptSeq;
	}

	/** 설문조사 참여 답변정보 삽입 */
	@Override
	public void insertsurveySelected(SqlSessionTemplate sqlSession, RequestSurveySelected requestSurveySelected) {
		// TODO Auto-generated method stub
		sqlSession.insert("ResidentSurvey.insertsurveySelected", requestSurveySelected);
	}



}
