package com.kh.onepart.resident.messenger.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.account.model.vo.ManagerVO;
import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.common.PageInfo;
import com.kh.onepart.common.Pagination;
import com.kh.onepart.resident.messenger.model.service.MessengerService;
import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;
import com.kh.onepart.resident.messenger.model.vo.ResponseMessengerAndResidentAndManagerVO;

@Controller
public class MessengerController {

	@Autowired
	MessengerService messengerService;


	/**
	 * 쪽지 메인페이지로 이동
	 * @return
	 */
	@RequestMapping("messenger/moveMessenger")
	public String moveMessenger() {

		return "messenger/resident/residentMessenger";
	}

	/**
	 * 타입별 쪽지 리스트 보여주기
	 * @param type
	 * @param currentPage
	 * @param session
	 * @param requestMessengerVO
	 * @return
	 */
	@RequestMapping("messenger/loadMessenger")
	public ModelAndView loadMessenger(int type, int currentPage, HttpSession session, RequestMessengerVO requestMessengerVO, ModelAndView modelAndView) {

		System.out.println("loadMessenger in !");
		System.out.println("type :: " + type);
		System.out.println("currentPage :: " + currentPage);



		// 받는 사람 구하기(로그인 유저)
		String loginUser = "";
		// 입주민일 경우, int > String 으로 형변환
		if(session.getAttribute("loginUser") instanceof ResidentVO) {
			System.out.println("resident in");
			loginUser = String.valueOf(((ResidentVO) session.getAttribute("loginUser")).getResidentSeq());


		// 관리자일 경우
		} else if(session.getAttribute("loginUser") instanceof ManagerVO) {
			System.out.println("resident in");
			loginUser = String.valueOf(((ManagerVO) session.getAttribute("loginUser")).getManagerSeq());

		}
		requestMessengerVO.setLoginUser(loginUser);

		// 타입 설정
		/*
		type 1 : 읽지 않은 쪽지 - READ_TM null
		type 2 : 받은 쪽지 - RECEIVER = LoginUser
		type 3 : 보낸 쪽지 - Sender = Loginuser
		type 4 : 보관함 - KEEP_TF = 'Y'
		 */
		requestMessengerVO.setType(type);

		// 타입별 카운트 가져오기
		int messengerCount = messengerService.selectMessengerCount(requestMessengerVO);
		System.out.println("messengerCount");

		PageInfo pi = Pagination.getPageInfo(currentPage, messengerCount);

		ArrayList<ResponseMessengerAndResidentAndManagerVO> responseMessengerAndResidentAndManagerVOList = messengerService.selectMessengerList(pi, requestMessengerVO);

		System.out.println("responseMessengerAndResidentAndManagerVOList.size() ::: " + responseMessengerAndResidentAndManagerVOList.size());
		System.out.println("responseMessengerAndResidentAndManagerVOList ::: " + responseMessengerAndResidentAndManagerVOList);


		modelAndView.addObject("responseMessengerAndResidentAndManagerVOList", responseMessengerAndResidentAndManagerVOList);
		modelAndView.addObject("pi", pi);

		modelAndView.setViewName("jsonView");
		return modelAndView;
	}



	/**
	 * 쪽지 작성 페이지로 이동
	 * @return
	 */
	@RequestMapping("messenger/writeMessengerForm")
	public String moveWriteMessengerForm() {

		return "messenger/resident/writeMessengerForm";
	}

	/**
	 * 쪽지 작성
	 * @return
	 */
	@RequestMapping("messenger/writeMessenger")
	public String insertMessenger(RequestMessengerVO requestMessengerVO, String[] tags, HttpSession session) {
		System.out.println("messenger/writeMessenger in!");
		System.out.println("requestMessengerVO:::" + requestMessengerVO);

		String messengerSender = "";
		// 입주민일 경우, int > String 으로 형변환
		if(session.getAttribute("loginUser") instanceof ResidentVO) {
			System.out.println("resident in");
			messengerSender = String.valueOf(((ResidentVO) session.getAttribute("loginUser")).getResidentSeq());


		// 관리자일 경우
		} else if(session.getAttribute("loginUser") instanceof ManagerVO) {
			System.out.println("resident in");
			messengerSender = String.valueOf(((ManagerVO) session.getAttribute("loginUser")).getManagerSeq());

		}
		requestMessengerVO.setMessengerSender(messengerSender);

		messengerService.insertMessenger(requestMessengerVO, tags);

		return "redirect:moveMessenger";
	}

}
