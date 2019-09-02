package com.kh.onepart.resident.my_home.visit_car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VisitCarController {
	
	@RequestMapping("/resident/menuVisitCar")
	public String moveVisitCar() {
		System.out.println("/resident/visitCar");
		return "/resident/my_home/visit_car/visitCar";
	}
}