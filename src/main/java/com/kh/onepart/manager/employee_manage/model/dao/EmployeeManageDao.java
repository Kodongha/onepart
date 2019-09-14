package com.kh.onepart.manager.employee_manage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.onepart.manager.employee_manage.model.vo.EmployeeManageVO;

public interface EmployeeManageDao {

	List<EmployeeManageVO> managerList(SqlSessionTemplate sqlSession);


}
