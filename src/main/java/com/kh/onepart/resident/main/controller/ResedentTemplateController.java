package com.kh.onepart.resident.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ResedentTemplateController {

	@RequestMapping("/resident/main")
	public String moveMain() {
		return "/resident/common/residentTemplate";
	}


	/*
	 * 현재 메뉴 세션 관리
	 *  - 새로고침 -> 메인화면 방지용
	 */

	// 메뉴 URL 가져오기
	@RequestMapping(value="/getMenu", method = RequestMethod.POST)
	@ResponseBody
	public String getMenuId(HttpSession session) {
		String menuId = (String) session.getAttribute("menuId");
		return (menuId == null)? "none" : menuId;
	}

	// 메뉴 URL 저장하기
	@RequestMapping(value="/setMenu", method = RequestMethod.POST)
	@ResponseBody
	public String setMenuId(String menuId, HttpSession session) {
		session.setAttribute("menuId", menuId);

		return "success";
	}
}
