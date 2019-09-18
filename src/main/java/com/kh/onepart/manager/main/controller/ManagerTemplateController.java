package com.kh.onepart.manager.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerTemplateController {

	@RequestMapping("/manager/main")
	public String moveMain() {
		System.out.println("in moveMain");

		return "/manager/common/managerTemplate";
	}

}

