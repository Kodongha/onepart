package com.kh.onepart.resident.messenger.model.service;

import java.util.ArrayList;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;
import com.kh.onepart.resident.messenger.model.vo.ResponseMessengerAndResidentAndManagerVO;

public interface MessengerService {

	/**
	 * 쪽지 작성
	 * @param requestMessengerVO
	 * @param tags
	 */
	void insertMessenger(RequestMessengerVO requestMessengerVO, String[] tags);

	/**
	 * 타입별 쪽지 카운트
	 * @param requestMessengerVO
	 * @return
	 */
	int selectMessengerCount(RequestMessengerVO requestMessengerVO);

	/**
	 * 타입별 쪽지 리스트
	 * @param pi
	 * @param requestMessengerVO
	 * @return
	 */
	ArrayList<ResponseMessengerAndResidentAndManagerVO> selectMessengerList(PageInfo pi,
			RequestMessengerVO requestMessengerVO);

}
