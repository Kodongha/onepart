package com.kh.onepart.batch.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.batch.model.dao.BatchDao;

@Service
public class BatchServiceImpl implements BatchService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	BatchDao batchDao;

	/** 쪽지 - 7일 이전 메신저 삭제 */
	@Override
	public void deleteMessenger() {
		// TODO Auto-generated method stub
		batchDao.deleteMessenger(sqlSession);
	}

}
