package com.kh.onepart.resident.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResedentMainController {

	@RequestMapping("/resident/main")
	public String moveMain() {
		System.out.println("/resident/main");
		return "/resident/common/residentTemplate";
	}
	
}
