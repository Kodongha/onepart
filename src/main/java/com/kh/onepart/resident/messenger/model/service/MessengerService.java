package com.kh.onepart.resident.messenger.model.service;

import java.util.ArrayList;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.messenger.model.vo.ManagerAndDeptVO;
import com.kh.onepart.resident.messenger.model.vo.RequestAttachVO;
import com.kh.onepart.resident.messenger.model.vo.RequestImgVO;
import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;
import com.kh.onepart.resident.messenger.model.vo.ResponseMessengerAndResidentAndManagerVO;
import com.kh.onepart.resident.messenger.model.vo.ResponseResidentVO;

public interface MessengerService {

	/**
	 * 쪽지 작성
	 * @param requestMessengerVO
	 * @param tags
	 * @param requestAttachVOList
	 * @param requestImgVOList
	 */
	void insertMessenger(RequestMessengerVO requestMessengerVO, String[] tags, ArrayList<RequestImgVO> requestImgVOList, ArrayList<RequestAttachVO> requestAttachVOList);

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

	/**
	 * 직원 명단 조회
	 * @return
	 */
	ArrayList<ManagerAndDeptVO> selectManagerList();

	/**
	 * 입주민 명단 조회
	 * @return
	 */
	ArrayList<ResponseResidentVO> selectResidentList();

	/**
	 * 메신저 상세보기
	 * @param messengerSeq
	 * @return
	 */
	ArrayList<Object> selectMessengerDetail(String messengerSeq);

	/**
	 * 이미지 다운로드
	 * @param requestImgVO
	 * @return
	 */
	RequestImgVO selectDownloadImg(RequestImgVO requestImgVO);

	/**
	 * 첨부파일 다운로드
	 * @param requestAttachVO
	 * @return
	 */
	RequestAttachVO selectDownloadAttach(RequestAttachVO requestAttachVO);

}
