package com.kh.onepart.manager.maintenance_cost.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ManagerMaintenanceCostDaoImpl implements ManagerMaintenanceCostDao{
	//단지내 내역별 총 관리비 리스트 받아오는 메소드
	@Override
	public ArrayList selectAllApartCostList(SqlSessionTemplate sqlSession) {

		ArrayList costList = (ArrayList) sqlSession.selectList("Managermaintenance.selectAllApartCostList");

		return costList;

	}
	//단지내 5달 관리비의 합계 리스트 가져오는 메소드
	@Override
	public ArrayList selectAllSumCostList(SqlSessionTemplate sqlSession) {

		ArrayList sumCostList = (ArrayList) sqlSession.selectList("Managermaintenance.selectAllSumCostList");

		return sumCostList;

	}

}
