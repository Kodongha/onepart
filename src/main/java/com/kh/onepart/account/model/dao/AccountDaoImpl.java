package com.kh.onepart.account.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.account.model.vo.ResidentVO;

@Repository
public class AccountDaoImpl implements AccountDao {

	@Override
	public ResidentVO loginCheck(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO) {
		// TODO Auto-generated method stub
		System.out.println("account dao");
		System.out.println("requestResidentVO::" + requestResidentVO);
		
		ResidentVO responseResidentVO = sqlSession.selectOne("Account.selectCheckLogin", requestResidentVO);
		System.out.println(responseResidentVO);
		
		return responseResidentVO;
	}

}
