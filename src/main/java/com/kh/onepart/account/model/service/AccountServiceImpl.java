package com.kh.onepart.account.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.onepart.account.model.dao.AccountDao;
import com.kh.onepart.account.model.vo.ResidentVO;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	AccountDao accountDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	@Override
	public ResidentVO loginCheck(ResidentVO requestResidentVO) {
		// TODO Auto-generated method stub
		System.out.println("account service");
		System.out.println("requestResidentVO::" + requestResidentVO);
		
		ResidentVO responseResidentVO = accountDao.loginCheck(sqlSession, requestResidentVO);
		
		return responseResidentVO;
	}
	
	
	
}
