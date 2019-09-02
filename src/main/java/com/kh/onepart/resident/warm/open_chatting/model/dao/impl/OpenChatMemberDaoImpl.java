package com.kh.onepart.resident.warm.open_chatting.model.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.resident.warm.open_chatting.model.dao.OpenChatMemberDao;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatMemberVO;

@Repository
public class OpenChatMemberDaoImpl implements OpenChatMemberDao {

	@Override
	public List<OpenChatMemberVO> selectListAll(SqlSessionTemplate sqlSession) {

		return sqlSession.selectList("OpenChatMember.selectListAll");
	}

	@Override
	public OpenChatMemberVO selectOneById(SqlSessionTemplate sqlSession, int openChatMemberSeq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(SqlSessionTemplate sqlSession, OpenChatMemberVO openChatMemberVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SqlSessionTemplate sqlSession, OpenChatMemberVO openChatMemberVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(SqlSessionTemplate sqlSession, int openChatMemberSeq) {
		// TODO Auto-generated method stub
		
	}

}