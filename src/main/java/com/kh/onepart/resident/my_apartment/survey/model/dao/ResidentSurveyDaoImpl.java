package com.kh.onepart.resident.my_apartment.survey.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.manager.survey.model.vo.SurveyVO;

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

}
