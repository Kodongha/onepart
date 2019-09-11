package com.kh.onepart.resident.my_home.visit_car.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.resident.my_home.visit_car.model.vo.VisitCarVo;

public interface VisitCarDao {

	//방문차량 등록용 메소드
	int registerVisitCar(SqlSessionTemplate sqlSession, VisitCarVo requestVisitCarVo);



}
