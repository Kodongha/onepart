package com.kh.onepart.resident.warm.open_chatting.model.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.resident.warm.open_chatting.model.dao.OpenChatNoticeDao;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatNoticeVO;

@Repository
public class OpenChatNoticeDaoImpl implements OpenChatNoticeDao {

	@Override
	public OpenChatNoticeVO selectOneById(SqlSessionTemplate sqlSession, int openChatNoticeSeq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(SqlSessionTemplate sqlSession, OpenChatNoticeVO openChatNoticeVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SqlSessionTemplate sqlSession, OpenChatNoticeVO openChatNoticeVO) {
		// TODO Auto-generated method stub
		
	}

}