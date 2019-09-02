package com.kh.onepart.resident.my_home.maintenance_cost.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MaintenanceCostController {

	@RequestMapping("/resident/menuMaintenanceCost")
	public String moveMaintenance() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_main";
	}
	
	@RequestMapping("/resident/maintenancecompare")
	public String moveMaintenance_maintenancecompare() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_compare_1";
	}
	
	@RequestMapping("/resident/maintenancecompare2")
	public String moveMaintenance_maintenancecompare2() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_compare_2";
	}
	
	@RequestMapping("/resident/maintenancecompare3")
	public String moveMaintenance_maintenancecompar3() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_compare_3";
	}
	
	@RequestMapping("/resident/maintenancedetail")
	public String moveMaintenance_maintenancedetail() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_detail";
	}
	
	@RequestMapping("/resident/maintenanceuseDetail")
	public String moveMaintenance_maintenanceuseDetail() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_useDetail";
	}
	
	@RequestMapping("/resident/useDetailMonth")
	public String moveMaintenance_useDetailMonth() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_useDetail_month";
	}
	
	@RequestMapping("/resident/payment")
	public String moveMaintenance_payment() {
		System.out.println("/menuVote");
		return "/resident/my_home/maintenance_cost/maintenance_payment";
	}
}
