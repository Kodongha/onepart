package com.kh.onepart.resident.messenger.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.messenger.model.vo.ManagerAndDeptVO;
import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;
import com.kh.onepart.resident.messenger.model.vo.ResponseMessengerAndResidentAndManagerVO;
import com.kh.onepart.resident.messenger.model.vo.ResponseResidentVO;

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
	 * @param requestMessengerVO
	 * @return
	 */
	int selectMessengerCount(SqlSessionTemplate sqlSession, RequestMessengerVO requestMessengerVO);

	/**
	 * 타입별 쪽지 리스트
	 * @param sqlSession
	 * @param pi
	 * @param requestMessengerVO
	 * @return
	 */
	ArrayList<ResponseMessengerAndResidentAndManagerVO> selectMessengerList(SqlSessionTemplate sqlSession, PageInfo pi,
			RequestMessengerVO requestMessengerVO);

	/**
	 * 직원 명단 조회
	 * @param sqlSession
	 * @return
	 */
	ArrayList<ManagerAndDeptVO> selectManagerList(SqlSessionTemplate sqlSession);

	/**
	 * 입주민 명단 조회
	 * @param sqlSession
	 * @return
	 */
	ArrayList<ResponseResidentVO> selectResidentList(SqlSessionTemplate sqlSession);

}
