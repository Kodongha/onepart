package
com.kh.onepart.resident.my_apartment.survey.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.common.PageInfo;
import com.kh.onepart.common.Pagination;
import com.kh.onepart.resident.my_apartment.survey.model.service.ResidentSurveyService;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveyMainVO;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveyPrtcpt;
import com.kh.onepart.resident.my_apartment.survey.model.vo.RequestSurveySelected;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstn;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyQstnOption;
import com.kh.onepart.resident.my_apartment.survey.model.vo.SurveyVO;

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
	public Map<String, Object> selectIngSurvey(HttpServletRequest request, ModelAndView modelAndView, HttpSession session) {

		System.out.println("/menuSurvey");

		int currentPage = 1;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		System.out.println("currentPage::::" + currentPage);


		// residentSeq 추가
		ResidentVO residentVO = (ResidentVO) session.getAttribute("loginUser");
		int residentSeq = 0;
		if(residentVO != null) {
			residentSeq = residentVO.getResidentSeq();
		}
		RequestSurveyMainVO requestSurveyMainVO = new RequestSurveyMainVO();
		// 진행 중 구분
		requestSurveyMainVO.setSurveyType(2);


		int surveyIngListCount = residentSurveyService.ingSurveyListCount(requestSurveyMainVO);

		System.out.println("surveyIngListCount ::: " + surveyIngListCount);
		PageInfo pi = Pagination.getPageInfo(currentPage, surveyIngListCount);

		// 추가 부분
		requestSurveyMainVO.setResidentSeq(residentSeq);
		requestSurveyMainVO.setPi(pi);

		ArrayList<SurveyVO> ingSurveyVOList = residentSurveyService.ingSurveyList(requestSurveyMainVO);
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
	public Map<String, Object> selectexpectedSurvey(HttpServletRequest request, ModelAndView modelAndView, HttpSession session) {

		System.out.println("/selectexpectedSurvey");

		int currentPage = 1;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		System.out.println("currentPage::::" + currentPage);

		// residentSeq 추가
		ResidentVO residentVO = (ResidentVO) session.getAttribute("loginUser");
		int residentSeq = 0;
		if(residentVO != null) {
			residentSeq = residentVO.getResidentSeq();
		}
		RequestSurveyMainVO requestSurveyMainVO = new RequestSurveyMainVO();
		// 진행 예정 구분
		requestSurveyMainVO.setSurveyType(1);

		int surveyIngListCount = residentSurveyService.ingSurveyListCount(requestSurveyMainVO);
		System.out.println("surveyIngListCount ::: " + surveyIngListCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, surveyIngListCount);

		// 추가 부분
		requestSurveyMainVO.setResidentSeq(residentSeq);
		requestSurveyMainVO.setPi(pi);

		ArrayList<SurveyVO> expectedSurveyVOList = residentSurveyService.ingSurveyList(requestSurveyMainVO);
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
	public Map<String, Object> selectfinishSurvey(HttpServletRequest request, ModelAndView modelAndView, HttpSession session) {

		System.out.println("/selectfinishSurvey");

		int currentPage = 1;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		System.out.println("currentPage::::" + currentPage);

		// residentSeq 추가
		ResidentVO residentVO = (ResidentVO) session.getAttribute("loginUser");
		int residentSeq = 0;
		if(residentVO != null) {
			residentSeq = residentVO.getResidentSeq();
		}
		RequestSurveyMainVO requestSurveyMainVO = new RequestSurveyMainVO();
		// 진행 예정 구분
		requestSurveyMainVO.setSurveyType(3);

		int surveyFinishListCount =  residentSurveyService.ingSurveyListCount(requestSurveyMainVO);
		System.out.println("surveyIngListCount ::: " + surveyFinishListCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, surveyFinishListCount);

		// 추가 부분
		requestSurveyMainVO.setResidentSeq(residentSeq);
		requestSurveyMainVO.setPi(pi);

		ArrayList<SurveyVO> finishSurveyVOList = residentSurveyService.ingSurveyList(requestSurveyMainVO);
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
		System.out.println("/surveyDetail in");
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
	 * 설문조사 참여정보 삽입
	 * @param surveySeq
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/resident/insertsurveyPrtcpt")
	public ModelAndView insertsurveyPrtcpt(String resultStr, ModelAndView modelAndView) {
		System.out.println("/insertsurveyPrtcpt in");
		System.out.println("answerResult:::" + resultStr);

		ObjectMapper mapper = new ObjectMapper();
		Map<Object, Object> surveyAnswerVOMap = new HashMap<Object, Object>(); // 요청 기본정보

		List<Object> answerList = new ArrayList<Object>(); // 요청 질문 답변
		List<Object> surveyQstnSeqArray = new ArrayList<Object>(); // 요청 질문 번호
		RequestSurveyPrtcpt requestSurveyPrtcpt = new RequestSurveyPrtcpt(); // 정리 기본정보

		try {
			surveyAnswerVOMap = mapper.readValue(resultStr, new TypeReference<Map<Object, Object>>(){});

			System.out.println(surveyAnswerVOMap);

			requestSurveyPrtcpt.setResidentSeq( Integer.parseInt(((String) surveyAnswerVOMap.get("loginUser"))));
			requestSurveyPrtcpt.setSurveySeq( Integer.parseInt(((String) surveyAnswerVOMap.get("surveySeq"))));

			System.out.println(requestSurveyPrtcpt);


			surveyQstnSeqArray = (List<Object>) surveyAnswerVOMap.get("surveyQstnSeqArray");
			answerList = (List<Object>) surveyAnswerVOMap.get("answerList");

			System.out.println("surveyQstnSeqArray:::" + surveyQstnSeqArray);
			System.out.println("answerList:::" + answerList);

			ArrayList<RequestSurveySelected> surveySelectedList = new ArrayList<RequestSurveySelected>(); // 질문 답변
			for(int i=0; i<surveyQstnSeqArray.size(); i++) {
				RequestSurveySelected requestSurveySelected = new RequestSurveySelected();

				requestSurveySelected.setSurveyQstnSeq(Integer.parseInt(((String) surveyQstnSeqArray.get(i))));
				requestSurveySelected.setSelectedAnswer(String.valueOf(answerList.get(i)));

				surveySelectedList.add(requestSurveySelected);
			}

			System.out.println("surveySelectedList:::" + surveySelectedList);

			// Service
			residentSurveyService.insertsurveyPrtcpt(requestSurveyPrtcpt, surveySelectedList);
			modelAndView.addObject("surveySeq", requestSurveyPrtcpt.getSurveySeq());
			modelAndView.setViewName("redirect:surveyDetail");

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return modelAndView;
	}



}
