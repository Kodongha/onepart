package com.kh.onepart.account.controller;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
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
	@Autowired
	private DataSourceTransactionManager transactionManager;

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
	//이동 로그인 화면
	@RequestMapping("/moveLogin")
	public String moveLogin() {
		System.out.println("in account");
		return "account/login";
	}
	//이동 회원가입 화면
	@RequestMapping("/moveRegister")
	public String moveRegister() {
		System.out.println("in account");
		return "account/register";
	}
	//이동 아이디찾기 화면
	@RequestMapping("/moveFindId")
	public String moveFindId() {
		System.out.println("in account");
		return "account/findId";
	}
	//이동 비밀번호 찾기 화면
	@RequestMapping("/moveFindPwd")
	public String moveFindPwd() {
		System.out.println("in account");
		return "account/findPwd";
	}

	//로그인용 메소드
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)
	public String loginCheck(ResidentVO requestResidentVO, Model model) {
		System.out.println("/loginCheck");
		System.out.println("requestResidentVO in Controller:::" + requestResidentVO);
//		passwordEncoder.encode(requestResidentVO.getResidentPwd());
//		System.out.println("암호화된 비번 : " + passwordEncoder.encode(requestResidentVO.getResidentPwd()));
//		ResidentVO responseResidentVO= accountService.loginCheck(requestResidentVO);
//		System.out.println("ctrl responseResidentVO ::::" + responseResidentVO);
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
	//로그아웃
	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
		System.out.println("in resident");
		//System.out.println("before : " + request.getSession().getAttribute("loginUser"));
		status.setComplete();

		return "redirect:resident/main";
	}
	//회원 가입용 메소드
	@RequestMapping("/register")
	public String register(ResidentVO requestResidentVO, Model model) {
		String encPassword = passwordEncoder.encode(requestResidentVO.getResidentPwd());
		System.out.println("encPassword in ctr: " + encPassword);
		requestResidentVO.setResidentPwd(encPassword);

		if(requestResidentVO.getResidentGender().equals("1") || requestResidentVO.getResidentGender().equals("3")) {
			requestResidentVO.setResidentGender("M");
		}else {
			requestResidentVO.setResidentGender("F");
		}
		System.out.println("requestResidentVO in ctr : " + requestResidentVO);
		int result = accountService.insertResident(requestResidentVO);
		System.out.println("result in ctr : " + result);

		if(result > 0) {
			return "redirect:moveAccount";
		}else {
			model.addAttribute("msg", "회원 가입 실패!");
			return "common/errorPage";
		}

	}

}
