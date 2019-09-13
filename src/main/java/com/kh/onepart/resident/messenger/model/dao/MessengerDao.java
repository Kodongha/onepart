package com.kh.onepart.resident.messenger.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;

public interface MessengerDao {

	/**
	 * 쪽지 작성
	 * @param sqlSession
	 * @param requestMessengerVO
	 */
	void insertMessenger(SqlSessionTemplate sqlSession, RequestMessengerVO requestMessengerVO);

	/**
	 * 타입별 쪽지 카운트
	 * @param sqlSession
	 * @param type
	 * @return
	 */
	int selectMessengerCount(SqlSessionTemplate sqlSession, int type);

}
