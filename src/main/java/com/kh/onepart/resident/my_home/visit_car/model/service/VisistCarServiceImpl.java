package com.kh.onepart.resident.my_home.visit_car.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.account.model.dao.AccountDao;
import com.kh.onepart.resident.my_home.visit_car.model.dao.VisitCarDao;
import com.kh.onepart.resident.my_home.visit_car.model.vo.VisitCarVo;

@Service
public class VisistCarServiceImpl implements VisitCarService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	VisitCarDao visitCarDao;

	//방문차량 등록용 메소드
	@Override
	public int registerVisitCar(VisitCarVo requestVisitCarVo) {
		System.out.println("requestVisitCarVo ::S::" + requestVisitCarVo);
		return visitCarDao.registerVisitCar(sqlSession, requestVisitCarVo);
	}

}
