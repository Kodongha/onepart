package com.kh.onepart.account.model.dao;

import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.account.model.vo.ResidentVO;

@Repository
public class AccountDaoImpl implements AccountDao {
	//로그인용 메소드
	@Override
	public ResidentVO loginCheck(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO) throws LoginException {
		System.out.println("account dao");
		System.out.println("requestResidentVO::" + requestResidentVO);

		ResidentVO loginUser = sqlSession.selectOne("Account.selectCheckLogin", requestResidentVO);
		System.out.println(loginUser);

		if(loginUser == null) {
			throw new LoginException("로그인 정보가 존재하지 않습니다.");
		}
		return loginUser;
	}
	// 암호화 비밀번호 조회용 메소드
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO) {
		return sqlSession.selectOne("Account.selectPwd", requestResidentVO.getResidentId());
	}
	//비밀번호 일치 시 회원 정보 조회용 메소드
	@Override
	public ResidentVO selectResident(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO) {
		return sqlSession.selectOne("Account.selectLoginUser", requestResidentVO);
	}

}
