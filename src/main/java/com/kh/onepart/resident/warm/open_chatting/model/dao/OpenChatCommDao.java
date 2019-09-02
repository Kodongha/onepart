package com.kh.onepart.resident.warm.open_chatting.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatCommVO;

public interface OpenChatCommDao {
	public List<OpenChatCommVO> selectListAll(SqlSessionTemplate sqlSession);
	public OpenChatCommVO selectOneById(SqlSessionTemplate sqlSession, int openChatSeq);
	public void insert(SqlSessionTemplate sqlSession, OpenChatCommVO openChatCommVO);
	public void update(SqlSessionTemplate sqlSession, OpenChatCommVO openChatCommVO);
	public void deleteById(SqlSessionTemplate sqlSession, int openChatSeq);
}
