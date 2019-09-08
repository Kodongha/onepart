package com.kh.onepart.account.model.service;

import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.onepart.account.model.dao.AccountDao;
import com.kh.onepart.account.model.exception.ManagerLoginException;
import com.kh.onepart.account.model.exception.findIdException;
import com.kh.onepart.account.model.exception.findPwdException;
import com.kh.onepart.account.model.vo.ManagerVO;
import com.kh.onepart.account.model.vo.ResidentVO;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	AccountDao accountDao;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	//로그인용 메소드
	@Override
	public ResidentVO loginCheck(ResidentVO requestResidentVO) throws LoginException {
		System.out.println("loginCheck service");
		System.out.println("requestResidentVO in Service::" + requestResidentVO);

		ResidentVO loginUser = null;
		String encPassword = accountDao.selectEncPassword(sqlSession, requestResidentVO);
		System.out.println("encPassword in service : " + encPassword);
		System.out.println("requestResidentVO.getResidentPwd() in service : " + requestResidentVO.getResidentPwd());

//		ResidentVO responseResidentVO = accountDao.loginCheck(sqlSession, requestResidentVO);

		if(!passwordEncoder.matches(requestResidentVO.getResidentPwd(), encPassword)) {
			System.out.println("hi");
			throw new LoginException("로그인 실패!");
		}else {
			loginUser = accountDao.selectResident(sqlSession, requestResidentVO);
			System.out.println("loginUser in Service : " + loginUser);
		}

		return loginUser;
	}

	//회원 가입용 메소드
	@Override
	public int insertResident(ResidentVO requestResidentVO) {
		System.out.println("requestResidentVO in svcImpl : " + requestResidentVO);
		return accountDao.insertResident(sqlSession, requestResidentVO);
	}

	//아이디 찾기용 메소드
	@Override
	public ResidentVO findId(ResidentVO requestResidentVO) throws findIdException {
		System.out.println("account service");
		System.out.println("requestResidentVO in Service:" + requestResidentVO);

		ResidentVO findId = null;
		findId = accountDao.findId(sqlSession, requestResidentVO);
		System.out.println("findId in Service : " + findId);

		return findId;
	}

	//비밀번호 찾기용 정보조회 메소드
	@Override
	public ResidentVO findPwd(ResidentVO requestResidentVO) throws findPwdException {
		System.out.println("account service");
		System.out.println("requestResidentVO in Service:" + requestResidentVO);

		ResidentVO findPwd = null;
		findPwd = accountDao.findPwd(sqlSession, requestResidentVO);
		System.out.println("findPwd in Service : " + findPwd);

		return findPwd;
	}

	//비밀번호 재설정용 메소드
	@Override
	public int setNewPwd(ResidentVO requestResidentVO) {
		System.out.println("requestResidentVO in svcImpl : " + requestResidentVO);
		return accountDao.setNewPwd(sqlSession, requestResidentVO);
	}

	@Override
	public ManagerVO managerLoginCheck(ManagerVO requestManagerVO) throws ManagerLoginException {
		System.out.println("account service");
		System.out.println("requestManagerVO in Service::" + requestManagerVO);

		ManagerVO loginUser = null;
		String encPassword = accountDao.selectEncPassword(sqlSession, requestManagerVO);
		System.out.println("encPassword in service : " + encPassword);
		System.out.println("requestManagerVO.getResidentPwd() in service : " + requestManagerVO.getManagerPwd());

//		ResidentVO responseResidentVO = accountDao.loginCheck(sqlSession, requestManagerVO);

		if(!passwordEncoder.matches(requestManagerVO.getManagerPwd(), encPassword)) {
			System.out.println("hi");
			throw new ManagerLoginException("로그인 실패!");
		}else {
			loginUser = accountDao.selectManager(sqlSession, requestManagerVO);
			System.out.println("loginUser in Service : " + loginUser);
		}

		return loginUser;
	}







}
