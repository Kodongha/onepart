package com.kh.onepart.resident.messenger.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;

@Repository
public class MessengerDaoImpl implements MessengerDao {

	/**  쪽지 작성 */
	@Override
	public void insertMessenger(SqlSessionTemplate sqlSession, RequestMessengerVO requestMessengerVO) {
		// TODO Auto-generated method stub

		sqlSession.insert("Messenger.insertMessenger", requestMessengerVO);
	}

	/** 타입별 쪽지 카운트 */
	@Override
	public int selectMessengerCount(SqlSessionTemplate sqlSession, int type) {
		// TODO Auto-generated method stub

		int messengerCount = sqlSession.selectOne("Messenger.selectMessengerCount", type);

		return messengerCount;
	}

}
