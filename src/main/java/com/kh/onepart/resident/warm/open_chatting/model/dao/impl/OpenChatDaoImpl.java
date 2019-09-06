package com.kh.onepart.resident.warm.open_chatting.model.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.dao.OpenChatDao;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatVO;

@Repository
public class OpenChatDaoImpl implements OpenChatDao {

	@Override
	public List<OpenChatVO> selectListAll(SqlSessionTemplate sqlSession) {

		return sqlSession.selectList("OpenChat.selectListAll");
	}

	@Override
	public OpenChatVO selectOneById(SqlSessionTemplate sqlSession, int openChatSeq) {

		return sqlSession.selectOne("OpenChat.selectOneById", openChatSeq);
	}

	@Override
	public void insert(SqlSessionTemplate sqlSession, OpenChatVO openChatVO) {
		sqlSession.insert("OpenChat.insert", openChatVO);
	}

	@Override
	public void update(SqlSessionTemplate sqlSession, OpenChatVO openChatVO) {
		sqlSession.update("OpenChat.update", openChatVO);
	}

	@Override
	public void deleteById(SqlSessionTemplate sqlSession, int openChatSeq) {
		sqlSession.delete("OpenChat.deleteById", openChatSeq);
	}

	@Override
	public void setCurrHead(SqlSessionTemplate sqlSession, int openChatSeq) {
		sqlSession.update("OpenChat.setCurrHead", openChatSeq);
	}

	@Override
	public List<ResidentVO> selectListByOpenChatSeq(SqlSessionTemplate sqlSession, int openChatSeq) {

		return sqlSession.selectList("OpenChat.selectListByOpenChatSeq", openChatSeq);
	}

	@Override
	public int countChatRoom(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("OpenChat.countChatRoom");
	}




}
