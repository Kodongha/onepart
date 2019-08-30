package com.kh.onepart.resident.my_home.visit_car.controller;

@Controller
public class VisitCarController {
	
	@RequestMapping("/resident/menuVisitCar")
	public String moveVisitCar() {
		System.out.println("/resident/visitCar");
		return "/resident/my_home/visit_car/visitCar";
	}
}