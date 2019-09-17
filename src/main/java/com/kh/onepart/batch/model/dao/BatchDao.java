package com.kh.onepart.batch.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

public interface BatchDao {

	/** 쪽지 - 7일 이전 메신저 삭제 */
	void deleteMessenger(SqlSessionTemplate sqlSession);

}
