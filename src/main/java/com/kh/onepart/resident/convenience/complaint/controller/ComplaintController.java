package com.kh.onepart.resident.convenience.complaint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComplaintController {
	/*$("#menuComplaint").data("menu-url", "/onepart/resident/menuComplaint");*/
	@RequestMapping("/resident/menuComplaint")
	public String moveComplaint() {
		System.out.println("/menuComplaint");
		return "/resident/convenience/complaint/complaint";
	}
	
	@RequestMapping("/resident/moveComplaintDetail")
	public String moveComplaintDetail() {
		System.out.println("/moveComplaintDetail");
		return "/resident/convenience/complaint/complaint_detail";
	}
	
	@RequestMapping("/resident/moveComplaintWrite")
	public String moveComplaintWrite() {
		System.out.println("/moveComplaintWrite");
		return "/resident/convenience/complaint/complaint_write";
	}
	
	@RequestMapping("/resident/moveComplaintUpdate")
	public String moveComplaintUpdate() {
		System.out.println("/moveComplaintUpdate");
		return "/resident/convenience/complaint/complaint_update";
	}
	
	


}