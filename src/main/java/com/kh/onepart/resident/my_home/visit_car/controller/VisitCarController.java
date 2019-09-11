package com.kh.onepart.resident.my_home.visit_car.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.my_home.visit_car.model.service.VisitCarService;
import com.kh.onepart.resident.my_home.visit_car.model.vo.VisitCarVo;

@Controller

public class VisitCarController {
	@Autowired
	private VisitCarService visitCarService;
	@Autowired
	private DataSourceTransactionManager transactionManager;

	//이동 방문차량 등록 화면
	@RequestMapping("/resident/menuVisitCar")
	public String moveVisitCar() {
		System.out.println("/resident/moveVisitCar");
		return "/resident/my_home/visit_car/registerVisitCar";
	}


	//이동 방문차량 등록 리스트 화면
	@RequestMapping("/resident/moveListVisitCar")
	public String moveListVisitCar() {
		System.out.println("/resident/listVisitCar3");
		return "/resident/my_home/visit_car/listVisitCar3";
	}

	//방문차량 등록용 메소드
	@RequestMapping("/registerVisitCar")
	public String registerVisitCar(VisitCarVo requestVisitCarVo, Model model, HttpSession session) {
		ResidentVO loginUser = (ResidentVO)session.getAttribute("loginUser");
		int residentSeq = loginUser.getResidentSeq();
		System.out.println("현재 로그인 하고있는 residentSeq ::C:: " + residentSeq);
		System.out.println("requestVisitCarVo ::C::" + requestVisitCarVo);
		requestVisitCarVo.setResidentSeq(residentSeq);

		int result = visitCarService.registerVisitCar(requestVisitCarVo);

		if(result > 0) {
			return "redirect:menuVisitCar";
		}else {
			model.addAttribute("msg", "방문 차량 등록 실패!");
		    return "common/errorPage";
		}

	}
}