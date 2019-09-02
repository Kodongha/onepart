package com.kh.onepart.resident.warm.open_chatting.model.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.resident.warm.open_chatting.model.dao.OpenChatCommDao;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatCommVO;

@Repository
public class OpenChatCommDaoImpl implements OpenChatCommDao {

	@Override
	public List<OpenChatCommVO> selectListAll(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OpenChatCommVO selectOneById(SqlSessionTemplate sqlSession, int openChatSeq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(SqlSessionTemplate sqlSession, OpenChatCommVO openChatCommVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SqlSessionTemplate sqlSession, OpenChatCommVO openChatCommVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(SqlSessionTemplate sqlSession, int openChatSeq) {
		// TODO Auto-generated method stub
		
	}
}
