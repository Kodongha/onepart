package com.kh.onepart.resident.my_home.visit_car.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.resident.my_home.visit_car.model.vo.VisitCarVo;

@Repository
public class VisitCarDaoImpl implements VisitCarDao{

	//방문차량 등록용 메소드
	@Override
	public int registerVisitCar(SqlSessionTemplate sqlSession, VisitCarVo requestVisitCarVo) {
		System.out.println("requestVisitCarVo ::D:: " + requestVisitCarVo);
		return sqlSession.insert("ResidentVisitCar.insertVisitCar");
	}

}
