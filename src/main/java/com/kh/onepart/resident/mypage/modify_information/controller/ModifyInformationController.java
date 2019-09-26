package com.kh.onepart.resident.mypage.modify_information.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.account.model.service.AccountService;
import com.kh.onepart.account.model.vo.ResidentVO;

@Controller
	public class ModifyInformationController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;

	//이동 회원정보수정
	@RequestMapping("/resident/menuModifyInformation")
	public String menuModifyInformation() {
		System.out.println("/resident/menuModifyInformation");
		return "/resident/my_page/modify_information/modifyInformation";
	}

	//회원정보수정에서 비밀번호 재설정용 메소드
	@RequestMapping("/resident/setNewPwd2")
	public ModelAndView setNewPwd(ModelAndView mv, HttpSession session, String residentId, String oldResidentPwd, String residentPwd) {
		System.out.println("oldResidentPwd ::C:: " + oldResidentPwd);

		String encPassword = passwordEncoder.encode(residentPwd);
		System.out.println("residentPwd through encPassword ::C:: " + encPassword);

		System.out.println("residentId ::C:: " + residentId);
		ResidentVO requestResidentVO = (ResidentVO) session.getAttribute("loginUser");
		requestResidentVO.setResidentId(residentId);
		requestResidentVO.setResidentPwd(encPassword);

		int result = accountService.setNewPwd2(oldResidentPwd, requestResidentVO);
		System.out.println("result in ctr : " + result);

		if(result > 0) {
			mv.addObject("result", result);
			mv.setViewName("jsonView");
		}else {
			System.out.println("비밀번호 재설정 오류");
			mv.addObject("result", result);
			mv.setViewName("jsonView");
//			mv.addObject("msg", "비밀번호 재설정 오류");
//			mv.setViewName("common/errorPage");

		}
		return mv;
	}
}
