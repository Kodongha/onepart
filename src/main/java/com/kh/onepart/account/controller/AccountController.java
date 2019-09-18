package com.kh.onepart.account.controller;

import java.util.ArrayList;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.account.model.exception.ManagerLoginException;
import com.kh.onepart.account.model.exception.findIdException;
import com.kh.onepart.account.model.exception.findPwdException;
import com.kh.onepart.account.model.service.AccountService;
import com.kh.onepart.account.model.vo.ManagerVO;
import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.superintend_vote.model.service.SuperintendVoteService;

@Controller
//자동 세션 등록 어노테이션
@SessionAttributes("loginUser")
public class AccountController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	@Autowired
	private SuperintendVoteService svs;

	/**
	 * 로그인 페이지 이동
	 * @return
	 */
	@RequestMapping("/moveAccount")
	public String moveAccountPage(HttpServletRequest request) {
		System.out.println("in account");
		System.out.println("after : " + request.getSession().getAttribute("loginUser"));

		return "account/login";
	}
	/**
	 * 로그인 요청 계정 확인 및 로그인
	 * @param requestResidentVO
	 * @return
	 */
	//이동 로그인 화면
	@RequestMapping("/moveLogin")
	public String moveLogin() {
		System.out.println("in moveLogin");
		return "account/login";
	}
	//이동 회원가입 화면
	@RequestMapping("/moveRegister")
	public String moveRegister() {
		System.out.println("in moveRegister");
		return "account/register";
	}
	//이동 아이디찾기 화면
	@RequestMapping("/moveFindId")
	public String moveFindId() {
		System.out.println("in moveFindId");
		return "account/findId";
	}

	@RequestMapping("/moveSmssend")
	public String moveSmssend() {
		System.out.println("in moveSmssend");
		return "account/smssend";
	}

	//이동 비밀번호 찾기 화면
	@RequestMapping("/moveFindPwd")
	public String moveFindPwd() {
		System.out.println("in moveFindPwd");
		return "account/findPwd";
	}
	//이동 관리자 로그 화면
	@RequestMapping("/moveManagerAccount")
	public String moveManagerAccount(HttpServletRequest request) {
		System.out.println("in moveManagerAccount");
		System.out.println("after : " + request.getSession().getAttribute("managerLoginUser"));
		return "account/managerLogin";
	}


	//로그인용 메소드
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)
	public String loginCheck(ResidentVO requestResidentVO, Model model) {
		System.out.println("/loginCheck");
		System.out.println("requestResidentVO ::C:: " + requestResidentVO);

		try {
			ResidentVO loginUser = accountService.loginCheck(requestResidentVO);
			model.addAttribute("loginUser", loginUser);
			System.out.println("loginUser ::C:: " + loginUser);
				return "redirect:resident/main";
		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	//로그아웃
	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
		System.out.println("in resident");
		//System.out.println("before : " + request.getSession().getAttribute("loginUser"));
		status.setComplete();

		return "redirect:resident/main";
	}
	//매니저 로그아웃
	@RequestMapping("/mLogout")
	public String mLogout(SessionStatus status) {
		System.out.println("in resident");
		//System.out.println("before : " + request.getSession().getAttribute("loginUser"));
		status.setComplete();

		return "redirect:manager/main";
	}
	//회원 가입용 메소드
	@RequestMapping("/register")
	public String register(ResidentVO requestResidentVO, Model model) {
		String encPassword = passwordEncoder.encode(requestResidentVO.getResidentPwd());
		System.out.println("encPassword ::C:: " + encPassword);
		requestResidentVO.setResidentPwd(encPassword);

		if(requestResidentVO.getResidentGender().equals("1") || requestResidentVO.getResidentGender().equals("3")) {
			requestResidentVO.setResidentGender("M");
		}else {
			requestResidentVO.setResidentGender("F");
		}
		System.out.println("requestResidentVO ::C:: " + requestResidentVO);
		int result = accountService.insertResident(requestResidentVO);
		System.out.println("result ::C:: " + result);

		if(result > 0) {
			return "redirect:moveAccount";
		}else {
			model.addAttribute("msg", "회원 가입 실패!");
			return "common/errorPage";
		}
	}


		//아이디 찾기용 메소드
		@RequestMapping(value="/findId", method=RequestMethod.POST)
		public ModelAndView findId(ResidentVO requestResidentVO, ModelAndView mv, HttpSession session) {
			System.out.println("/findId");
			System.out.println("requestResidentVO in Controller:::" + requestResidentVO);

			ResidentVO findId;
			try {
				findId = accountService.findId(requestResidentVO);
				System.out.println("findId in ctr: " + findId);
				if(findId != null) {
					mv.addObject("findId", findId);
					mv.setViewName("jsonView");
				}else {
					return null;
				}

			} catch (findIdException e) {
				mv.addObject("msg", e.getMessage());
				mv.setViewName("common/errorPage");
			}

			return mv;
		}

		//비밀번호 찾기용 정보조회 메소드
				@RequestMapping(value="/findPwd", method=RequestMethod.POST)
				public ModelAndView findPwd(ResidentVO requestResidentVO, ModelAndView mv, HttpSession session) {
					System.out.println("/findPwd");
					System.out.println("requestResidentVO in Controller:::" + requestResidentVO);

					ResidentVO findPwd;
					try {
						findPwd = accountService.findPwd(requestResidentVO);
						System.out.println("findPwd in ctr: " + findPwd);
						if(findPwd != null) {
							mv.addObject("findPwd", findPwd);
							mv.setViewName("jsonView");
						}else {
							mv.addObject("findPwd", findPwd);
							mv.setViewName("jsonView");
						}

					} catch (findPwdException e) {
						mv.addObject("msg", e.getMessage());
						System.out.println("아이디없음!");
						mv.setViewName("common/errorPage");
					}

					return mv;
				}

		//비밀번호 재설정용 메소드
				@RequestMapping("/setNewPwd")
				public ModelAndView setNewPwd(ResidentVO requestResidentVO, ModelAndView mv) {
					String encPassword = passwordEncoder.encode(requestResidentVO.getResidentPwd());
					System.out.println("encPassword in ctr: " + encPassword);
					requestResidentVO.setResidentPwd(encPassword);

					System.out.println("requestResidentVO in ctr : " + requestResidentVO);

					int result = accountService.setNewPwd(requestResidentVO);
					System.out.println("result in ctr : " + result);

					if(result > 0) {
						mv.addObject("result", result);
						mv.setViewName("jsonView");
					}else {
						System.out.println("비밀번호 재설정 오류");
						mv.addObject("msg", "비밀번호 재설정 오류");
						mv.setViewName("common/errorPage");

					}
					return mv;
				}

	//관리자 로그인용 메소드
	@RequestMapping(value="/managerLoginCheck", method=RequestMethod.POST)
	public String managerLoginCheck(ManagerVO requestManagerVO, Model model) {
		System.out.println("/managerLoginCheck");
		System.out.println("requestManagerVO ::C:: " + requestManagerVO);

		try {
			ManagerVO managerLoginUser = accountService.managerLoginCheck(requestManagerVO);
			model.addAttribute("loginUser", managerLoginUser);
			System.out.println("loginUser ::C:: " + managerLoginUser);
			return "redirect:manager/main";
		} catch (ManagerLoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

	//관리자 로그아웃
	@RequestMapping("/managerLogout")
	public String managerLogout(SessionStatus status) {
		System.out.println("in managerLogout");
		//System.out.println("before : " + request.getSession().getAttribute("loginUser"));
		status.setComplete();

		return "redirect:manager/main";
	}

	//아파트 동에 따른 호수 셀렉트형으로 불러오는 메소드
	@RequestMapping("/resident/changeBdNm2")
	public ModelAndView changeBdNm(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/resident/changeBdNm2");
		int bdNm = Integer.parseInt(request.getParameter("bdNm"));
		System.out.println("controller bdNm : " + bdNm);

		//해당 선택동에 포함된 호 리스트 불러오는 메소드
		ArrayList hoList = svs.selectAllHoList(bdNm);

		mv.addObject("hoList", hoList);
		mv.setViewName("jsonView");

		return mv;
	}

	//아이디 중복 체크
	@RequestMapping("/resident/idcheck")
    public ModelAndView idcheck(ModelAndView mv, HttpServletRequest request) {
		System.out.println("/resident/idcheck");
		String residentId = request.getParameter("residentId");
		System.out.println("residentId ::C:: " + residentId);
        int count = 0;
        count = accountService.idcheck(residentId);

        mv.addObject("cnt", count);
		mv.setViewName("jsonView");

        return mv;
    }

}
