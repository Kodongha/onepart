package com.kh.onepart.resident.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResidentMainController {

	@RequestMapping("/resident/menuMain")
	public String moveMain() {
		return "/resident/main/main";
	}

}
