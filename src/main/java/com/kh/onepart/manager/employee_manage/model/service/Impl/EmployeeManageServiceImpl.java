package com.kh.onepart.manager.employee_manage.model.service.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.manager.employee_manage.model.dao.EmployeeManageDao;
import com.kh.onepart.manager.employee_manage.model.service.EmployeeManageService;
import com.kh.onepart.manager.employee_manage.model.vo.EmployeeManageVO;


@Service
public class EmployeeManageServiceImpl implements EmployeeManageService{

	@Autowired
	EmployeeManageDao employeeManageDao;

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<EmployeeManageVO> managerList() {

		return employeeManageDao.managerList(sqlSession);
	}



}
