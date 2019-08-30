package com.kh.onepart.resident.my_apartment.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@RequestMapping("/resident/menuNotice")
	public String moveNotice() {
		System.out.println("/menuNotice");
		return "/resident/my_apartment/notice/notice";
	}

	@RequestMapping("/resident/moveNoticeTwo")
	public String moveNoticeTwo() {
		System.out.println("/moveNoticeTwo");
		return "/resident/my_apartment/notice/notice_two";
	}
	
}
