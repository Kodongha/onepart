package com.kh.onepart.account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.onepart.account.model.service.AccountService;
import com.kh.onepart.account.model.vo.ResidentVO;

@Controller
public class AccountController {

	@Autowired
	AccountService accountService;  
	
	/**
	 * 로그인 페이지 이동
	 * @return
	 */
	@RequestMapping("/moveAccount")
	public String moveAccountPage() {
		System.out.println("in account");
		
		return "account/login";
	}

	/**
	 * 로그인 요청 계정 확인 및 로그인
	 * @param requestResidentVO
	 * @return
	 */
	@RequestMapping("/loginCheck")
	public String loginCheck(ResidentVO requestResidentVO ) {
		System.out.println("/loginCheck");
		
		System.out.println("requestResidentVO:::" + requestResidentVO);
		
		ResidentVO responseResidentVO= accountService.loginCheck(requestResidentVO);

		System.out.println("ctrl responseResidentVO ::::" + responseResidentVO);
		
		return "account/account2";
	}
	
}
