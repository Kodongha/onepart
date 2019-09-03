package com.kh.onepart.manager.survey.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.manager.survey.model.SurveyVO;
import com.kh.onepart.manager.survey.model.dao.ManagerSurveyDao;

@Service
public class ManagerSurveyServiceImpl implements ManagerSurveyService{

	@Autowired
	ManagerSurveyDao managerSurveyDao;

	@Autowired
	private SqlSessionTemplate sqlSession;

	/** 설문조사 검색*/
	@Override
	public ArrayList<SurveyVO> searchSurvey(SurveyVO requestSurveyVO) {
		// TODO Auto-generated method stub

		ArrayList<SurveyVO> surveyVOList = managerSurveyDao.selectSearchSurveyList(sqlSession, requestSurveyVO);

		return surveyVOList;

	}

}
