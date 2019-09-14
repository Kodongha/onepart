package com.kh.onepart.manager.employee_manage.model.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.manager.employee_manage.model.dao.EmployeeManageDao;
import com.kh.onepart.manager.employee_manage.model.vo.EmployeeManageVO;


@Repository
public class EmployeeManageDaoImpl implements EmployeeManageDao{

	@Override
	public List<EmployeeManageVO> managerList(SqlSessionTemplate sqlSession) {
	
		return sqlSession.selectList("EmployeeManage.managerList");
	}



}
