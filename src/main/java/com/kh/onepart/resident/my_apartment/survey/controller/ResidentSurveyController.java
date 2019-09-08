package com.kh.onepart.resident.my_apartment.survey.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.common.Pagination;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstn;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstnOption;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyVO;
import com.kh.onepart.resident.my_apartment.survey.model.service.ResidentSurveyService;

@Controller
public class ResidentSurveyController {

	@Autowired
	ResidentSurveyService residentSurveyService;

	@RequestMapping("/resident/menuSurvey")
	public ModelAndView moveSurvey(HttpServletRequest request, ModelAndView modelAndView) {
		System.out.println("/menuSurvey");

		modelAndView.setViewName("/resident/my_apartment/survey/survey");

		return modelAndView;
	}

	/**
	 * 설문조사 진행 중 리스트 - 설문조사 메인
	 * @param request
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/resident/selectIngSurvey")
	@ResponseBody
	public Map<String, Object> selectIngSurvey(HttpServletRequest request, ModelAndView modelAndView) {

		System.out.println("/menuSurvey");

		int currentPage = 1;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		System.out.println("currentPage::::" + currentPage);

		int surveyIngListCount = residentSurveyService.ingSurveyListCount();
		System.out.println("surveyIngListCount ::: " + surveyIngListCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, surveyIngListCount);

		ArrayList<SurveyVO> ingSurveyVOList = residentSurveyService.ingSurveyList(pi);
		System.out.println("surveyList::" + ingSurveyVOList);

		Map<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("ingSurveyVOList", ingSurveyVOList);
		returnMap.put("pi", pi);

		return returnMap;
	}

	/**
	 * 설문조사 진행 예정 리스트 - 설문조사 메인
	 * @param request
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/resident/selectexpectedSurvey")
	@ResponseBody
	public Map<String, Object> selectexpectedSurvey(HttpServletRequest request, ModelAndView modelAndView) {

		System.out.println("/selectexpectedSurvey");

		int currentPage = 1;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		System.out.println("currentPage::::" + currentPage);

		int surveyIngListCount = residentSurveyService.expectedSurveyListCount();
		System.out.println("surveyIngListCount ::: " + surveyIngListCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, surveyIngListCount);

		ArrayList<SurveyVO> expectedSurveyVOList = residentSurveyService.expectedSurveyList(pi);
		System.out.println("surveyList::" + expectedSurveyVOList);

		Map<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("expectedSurveyVOList", expectedSurveyVOList);
		returnMap.put("pi", pi);

		return returnMap;
	}

	/**
	 * 설문조사 종료 리스트 - 설문조사 메인
	 * @param request
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/resident/selectfinishSurvey")
	@ResponseBody
	public Map<String, Object> selectfinishSurvey(HttpServletRequest request, ModelAndView modelAndView) {

		System.out.println("/selectfinishSurvey");

		int currentPage = 1;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		System.out.println("currentPage::::" + currentPage);

		int surveyFinishListCount = residentSurveyService.finishSurveyListCount();
		System.out.println("surveyIngListCount ::: " + surveyFinishListCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, surveyFinishListCount);

		ArrayList<SurveyVO> finishSurveyVOList = residentSurveyService.finishSurveyList(pi);
		System.out.println("surveyList::" + finishSurveyVOList);

		Map<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("finishSurveyVOList", finishSurveyVOList);
		returnMap.put("pi", pi);

		return returnMap;
	}


	/**
	 * 설문조사 상세정보
	 * @param surveySeq
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/resident/surveyDetail")
	public ModelAndView moveSurveyDetail(int surveySeq, ModelAndView modelAndView) {
		System.out.println("/residentSurveyService in");
		System.out.println("request surveySeq :::" + surveySeq);

		ArrayList<Object> surveyDetailList = residentSurveyService.selectSurveyDetail(surveySeq);
		SurveyVO surveyVO = (SurveyVO) surveyDetailList.get(0);
		ArrayList<SurveyQstn> surveyQstnList = (ArrayList<SurveyQstn>) surveyDetailList.get(1);
		ArrayList<SurveyQstnOption> surveyQstnOptionList = (ArrayList<SurveyQstnOption>) surveyDetailList.get(2);

		modelAndView.addObject("surveyVO", surveyVO);
		modelAndView.addObject("surveyQstnList", surveyQstnList);
		modelAndView.addObject("surveyQstnOptionList", surveyQstnOptionList);
		modelAndView.setViewName("resident/my_apartment/survey/surveyDetail");

		return modelAndView;
	}


	/**
	 * 설문조사 참여
	 * @param surveySeq
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/resident/insertsurveyPrtcpt")
	public ModelAndView insertsurveyPrtcpt(ModelAndView modelAndView) {
		System.out.println("/insertsurveyPrtcpt in");



		return modelAndView;
	}



}
