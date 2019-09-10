package com.kh.onepart.manager.car_manage.model.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.manager.car_manage.model.dao.ResidentCarDao;
import com.kh.onepart.manager.car_manage.model.vo.ResidentCarVO;

@Repository
public class ResidentCarDaoImpl implements ResidentCarDao{

	@Override
	public List<ResidentCarVO> residentCarList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ResidentCar.residentCarList");

	}

}