package com.kh.onepart.manager.survey.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.manager.survey.model.dao.ManagerSurveyDao;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstn;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyQstnOption;
import com.kh.onepart.manager.survey.model.vo.RequestSurveyVO;
import com.kh.onepart.manager.survey.model.vo.SurveyVO;

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

	/** 설문조사 등록 */
	@Override
	public void insertSurvey(RequestSurveyVO requestSurveyVO, ArrayList<RequestSurveyQstn> requestSurveyQstn,
			List<RequestSurveyQstnOption> surveyQstnOption) {
		// TODO Auto-generated method stub

		// INSERT SURVEY
		int surveySeq = managerSurveyDao.insertSurvey(sqlSession, requestSurveyVO);

		// INSERT SURVEY_QSTN
		for(int i=0; i<requestSurveyQstn.size(); i++) {
			requestSurveyQstn.get(i).setSurveySeq(surveySeq);

			int surveyQstnSeq = managerSurveyDao.insertsurveyQstn(sqlSession, requestSurveyQstn.get(i));

			// 객관식, 체크박스 일 경우
			if (requestSurveyQstn.get(i).getSurveyQstnType() == 3 || requestSurveyQstn.get(i).getSurveyQstnType() == 4) {

				// 받아온 전체 옵션 개수만큼 반복
				for(int j=0; j<surveyQstnOption.size(); j++) {

					// 문제 번호가 같은 것 끼리 INSERT
					if(requestSurveyQstn.get(i).getSurveyQstnNum() == surveyQstnOption.get(j).getSurveyQstnNum()) {
						surveyQstnOption.get(j).setSurveyQstnSeq(surveyQstnSeq);
						managerSurveyDao.insertSurveyQstnOption(sqlSession, surveyQstnOption.get(j));
					}

				} // end for j

			} // end if

		} // end for i
	}
}
