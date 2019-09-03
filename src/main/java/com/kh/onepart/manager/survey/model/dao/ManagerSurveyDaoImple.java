package com.kh.onepart.manager.survey.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

}
