package com.kh.onepart.resident.warm.open_chatting.model.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.dao.OpenChatDao;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatService;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatVO;

@Service
public class OpenChatServiceImpl implements OpenChatService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private OpenChatDao openChatDao;

	@Override
	public void createRoom(OpenChatVO openChatVO) {

		openChatDao.insert(sqlSession, openChatVO);
	}

	@Override
	public List<OpenChatVO> getRoomListAll() {
		return openChatDao.selectListAll(sqlSession);
	}

	@Override
	public void setCurrHead(int openChatSeq) {
		openChatDao.setCurrHead(sqlSession, openChatSeq);
	}

	@Override
	public List<ResidentVO> getResidentList(int openChatSeq) {
		return openChatDao.selectListByOpenChatSeq(sqlSession, openChatSeq);
	}

	@Override
	public OpenChatVO selectOneById(int openChatSeq) {
		return openChatDao.selectOneById(sqlSession, openChatSeq);
	}

	@Override
	public int countChatRoom() {
		return openChatDao.countChatRoom(sqlSession);
	}



}
