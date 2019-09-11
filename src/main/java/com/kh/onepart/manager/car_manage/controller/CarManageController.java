package com.kh.onepart.manager.car_manage.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.onepart.account.model.vo.ResidentVO;
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
		mv.addObject("residentCarList",residentCarList);

		mv.setViewName("/manager/car_manage/carManage");

		return mv;
	}

//	@RequestMapping(value="/resident/getResidentCarList", produces = "application/text; charset=utf8")
//	@ResponseBody
//	public String residentCarList(HttpSession session) throws JsonProcessingException {
//		List<ResidentCarVO> residentCarList = residentCarService.residentCarList();
//		System.out.println(residentCarList);
//
//		Map<String, Object> result = new HashMap<>();
//		result.put("result", "success");
//		result.put("residentCarList", residentCarList );
//		System.out.println("RESULT : " + result);
//		return new ObjectMapper().writeValueAsString(result);
//
//	}



}
