package com.kh.onepart.resident.mypage.modify_information.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
	public class ModifyInformationController {

	//이동 회원정보수정
	@RequestMapping("/resident/menuModifyInformation")
	public String menuModifyInformation() {
		System.out.println("/resident/menuModifyInformation");
		return "/resident/my_page/modify_information/modifyInformation";
	}
}
