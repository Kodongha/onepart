package com.kh.onepart.batch.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BatchDaoImpl implements BatchDao {

	/** 쪽지 - 7일 이전 메신저 삭제 */
	@Override
	public void deleteMessenger(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		sqlSession.update("Batch.deleteMessenger");
	}

}
