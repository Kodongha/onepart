package com.kh.onepart.account.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.account.model.vo.ResidentVO;

public interface AccountDao {

	ResidentVO loginCheck(SqlSessionTemplate sqlSession, ResidentVO requestResidentVO);

}
