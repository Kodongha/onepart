package com.kh.onepart.account.controller;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.onepart.account.model.service.AccountService;
import com.kh.onepart.account.model.vo.ResidentVO;

@Controller
//자동 세션 등록 어노테이션
@SessionAttributes("loginUser")
public class AccountController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	/**
	 * 로그인 페이지 이동
	 * @return
	 */
	@RequestMapping("/moveAccount")
	public String moveAccountPage(HttpServletRequest request) {
		System.out.println("in account");

		System.out.println("after : " + request.getSession().getAttribute("loginUser"));

		return "account/login";
	}

	/**
	 * 로그인 요청 계정 확인 및 로그인
	 * @param requestResidentVO
	 * @return
	 */
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)
	public String loginCheck(ResidentVO requestResidentVO, Model model) {
		System.out.println("/loginCheck");
		System.out.println("requestResidentVO in Controller:::" + requestResidentVO);
		passwordEncoder.encode(requestResidentVO.getResidentPwd());
		System.out.println("암호화된 비번 : " + passwordEncoder.encode(requestResidentVO.getResidentPwd()));
//		ResidentVO responseResidentVO= accountService.loginCheck(requestResidentVO);
//
//		System.out.println("ctrl responseResidentVO ::::" + responseResidentVO);
//
//		return "account/account2";

		try {
			ResidentVO loginUser = accountService.loginCheck(requestResidentVO);
			model.addAttribute("loginUser", loginUser);
			System.out.println("loginUser in controller" + loginUser);
			return "redirect:resident/main";
		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	@RequestMapping("/moveLogin")
	public String moveLogin() {
		System.out.println("in account");

		return "account/login";
	}

	@RequestMapping("/moveRegister")
	public String moveRegister() {
		System.out.println("in account");

		return "account/register";
	}

	@RequestMapping("/moveFindId")
	public String moveFindId() {
		System.out.println("in account");

		return "account/findId";
	}

	@RequestMapping("/moveFindPwd")
	public String moveFindPwd() {
		System.out.println("in account");

		return "account/findPwd";
	}

	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
		System.out.println("in resident");

		//System.out.println("before : " + request.getSession().getAttribute("loginUser"));

		status.setComplete();



		return "redirect:resident/main";
	}


}
