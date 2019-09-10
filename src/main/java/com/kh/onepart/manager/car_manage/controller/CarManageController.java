package com.kh.onepart.manager.car_manage.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.kh.onepart.manager.car_manage.model.service.ResidentCarService;
import com.kh.onepart.manager.car_manage.model.vo.ResidentCarVO;



@Controller
public class CarManageController {
	@Autowired
	ResidentCarService residentCarService;

	@RequestMapping("/manager/menuCarManage")
	public ModelAndView menuCarManage(ModelAndView mv) {

		List<ResidentCarVO> residentCarList = residentCarService.residentCarList();
		System.out.println(residentCarList);
		mv.addObject("residentCarList", residentCarList);
		
		mv.setViewName("/manager/car_manage/carManage");

		return mv;
	}
}
