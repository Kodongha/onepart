package com.kh.onepart.resident.warm.open_chatting.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatVO;

public interface OpenChatDao {
	public List<OpenChatVO> selectListAll(SqlSessionTemplate sqlSession);
	public OpenChatVO selectOneById(SqlSessionTemplate sqlSession, int openChatSeq);
	public void insert(SqlSessionTemplate sqlSession, OpenChatVO openChatVO);
	public void update(SqlSessionTemplate sqlSession, OpenChatVO openChatVO);
	public void deleteById(SqlSessionTemplate sqlSession, int openChatSeq);

	public void setCurrHead(SqlSessionTemplate sqlSession, int openChatSeq);
	public List<ResidentVO> selectListByOpenChatSeq(SqlSessionTemplate sqlSession, int openChatSeq);
	public int countChatRoom(SqlSessionTemplate sqlSession);

}
