package com.kh.onepart.manager.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerMainController {

	@RequestMapping("/manager/menuMain")
	public String moveMain() {
		System.out.println("in moveMain");

		return "/manager/main/main";
	}

}

