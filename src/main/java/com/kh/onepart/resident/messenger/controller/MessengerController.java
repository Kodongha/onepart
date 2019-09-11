package com.kh.onepart.resident.messenger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessengerController {

	@RequestMapping("messenger/moveMessenger")
	public String moveMessenger() {

		return "messenger/resident/residentMessenger";
	}

}
