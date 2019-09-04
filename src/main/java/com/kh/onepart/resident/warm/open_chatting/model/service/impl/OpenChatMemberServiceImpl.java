package com.kh.onepart.resident.warm.open_chatting.model.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.dao.OpenChatMemberDao;
import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatMemberService;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatMemberVO;

@Service
public class OpenChatMemberServiceImpl implements OpenChatMemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private OpenChatMemberDao openChatMemberDao;

	@Override
	public void addOpenChatMember(int openChatSeq, int residentSeq) {
		OpenChatMemberVO openChatMemberVO = new OpenChatMemberVO();
		openChatMemberVO.setOpenChatSeq(openChatSeq);
		openChatMemberVO.setResidentSeq(residentSeq);

		boolean isExist = (openChatMemberDao.selectCountByOpenChatSeqAndResidentSeq(sqlSession, openChatMemberVO) > 0);

		if(!isExist) {
			openChatMemberDao.insert(sqlSession, openChatMemberVO);
		}
	}

	

}
