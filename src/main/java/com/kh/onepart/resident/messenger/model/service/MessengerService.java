package com.kh.onepart.resident.messenger.model.service;

import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;

public interface MessengerService {

	/**
	 * 쪽지 작성
	 * @param requestMessengerVO
	 * @param tags
	 */
	void insertMessenger(RequestMessengerVO requestMessengerVO, String[] tags);

	/**
	 * 타입별 쪽지 카운트
	 * @param type
	 * @return
	 */
	int selectMessengerCount(int type);

}
