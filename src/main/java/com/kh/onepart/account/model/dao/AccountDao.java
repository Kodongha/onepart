package com.kh.onepart.account.model.dao;

import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.account.model.vo.ResidentVO;

public interface AccountDao {

	ResidentVO loginCheck(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO) throws LoginException;

	String selectEncPassword(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO);

	ResidentVO selectResident(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO);

	int insertResident(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO);

}
