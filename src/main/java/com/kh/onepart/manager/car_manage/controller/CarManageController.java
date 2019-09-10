package com.kh.onepart.manager.car_manage.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CarManageController {

	@RequestMapping("/manager/menuCarManage")
	public ModelAndView menuCarManage(ModelAndView mv) {

		mv.setViewName("/manager/car_manage/carManage");

		return mv;
	}
}
