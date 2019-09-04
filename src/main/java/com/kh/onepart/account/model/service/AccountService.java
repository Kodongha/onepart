package com.kh.onepart.account.model.service;

import javax.security.auth.login.LoginException;

import com.kh.onepart.account.model.exception.findIdException;
import com.kh.onepart.account.model.vo.ResidentVO;

public interface AccountService {
	//로그인 정보 확인용 메소드
	ResidentVO loginCheck(ResidentVO requestResidentVO) throws LoginException;
	//회원 가입용 메소드
	int insertResident(ResidentVO requestResidentVO);
	//아이디 찾기용 메소드
	ResidentVO findId(ResidentVO requestResidentVO) throws findIdException;



}
