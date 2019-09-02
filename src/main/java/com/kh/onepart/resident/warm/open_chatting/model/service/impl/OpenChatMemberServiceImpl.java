package com.kh.onepart.resident.warm.open_chatting.model.service.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.resident.warm.open_chatting.model.service.OpenChatMemberService;

@Service
public class OpenChatMemberServiceImpl implements OpenChatMemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;

}
