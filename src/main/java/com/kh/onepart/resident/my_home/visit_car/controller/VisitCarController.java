package com.kh.onepart.resident.my_home.visit_car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VisitCarController {

	@RequestMapping("/resident/registerVisitCar")
	public String registerVisitCar() {
		System.out.println("/resident/registerVisitCar");
		return "/resident/my_home/visit_car/registerVisitCar";
	}
	@RequestMapping("/resident/menuVisitCar")
	public String listVisitCar() {
		System.out.println("/resident/menuVisitCar");
		return "/resident/my_home/visit_car/listVisitCar3";
	}
}