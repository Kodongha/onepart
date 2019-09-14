package com.kh.onepart.manager.employee_manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.manager.employee_manage.model.service.EmployeeManageService;
import com.kh.onepart.manager.employee_manage.model.vo.EmployeeManageVO;


@Controller
public class EmployeeManageController {
	@Autowired
	EmployeeManageService employeeManageService;

	@RequestMapping("/manager/menuEmployeeManage")
	public ModelAndView menuEmployeeManage(ModelAndView mv) {
		List<EmployeeManageVO> managerList = employeeManageService.managerList();
		System.out.println(managerList);
		mv.addObject("managerList",managerList);
		mv.setViewName("/manager/employee_manage/employeeManage");

		return mv;
	}


//	String encPassword = passwordEncoder.encode(requestResidentVO.getResidentPwd());
//	System.out.println("encPassword ::C:: " + encPassword);
//	requestResidentVO.setResidentPwd(encPassword);
//
//	if(requestResidentVO.getResidentGender().equals("1") || requestResidentVO.getResidentGender().equals("3")) {
//		requestResidentVO.setResidentGender("M");
//	}else {
//		requestResidentVO.setResidentGender("F");
//	}
//	System.out.println("requestResidentVO ::C:: " + requestResidentVO);
//	int result = accountService.insertResident(requestResidentVO);
//	System.out.println("result ::C:: " + result);
//
//	if(result > 0) {
//		return "redirect:moveAccount";
//	}else {
//		model.addAttribute("msg", "회원 가입 실패!");
//		return "common/errorPage";
//	}

}
