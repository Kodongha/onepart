package com.kh.onepart.resident.messenger.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.resident.messenger.model.dao.MessengerDao;
import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;

@Service
public class MessengerServiceImpl implements MessengerService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	MessengerDao messengerDao;

	/** 쪽지 작성 */
	@Override
	public void insertMessenger(RequestMessengerVO requestMessengerVO, String[] tags) {
		// TODO Auto-generated method stub


		for(int i=0; i<tags.length; i++) {
			System.out.println("받는 이 : " + tags[i]);
			requestMessengerVO.setMessengerReceiver(tags[i]);
			System.out.println("최종 requestMessengerVO ::: " + requestMessengerVO);
			messengerDao.insertMessenger(sqlSession, requestMessengerVO);
		}

	}

	/** 타입별 쪽지 카운트 */
	@Override
	public int selectMessengerCount(int type) {
		// TODO Auto-generated method stub

		int messengerCount = messengerDao.selectMessengerCount(sqlSession, type);


		return messengerCount;
	}

}
