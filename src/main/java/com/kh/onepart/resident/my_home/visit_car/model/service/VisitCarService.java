package com.kh.onepart.resident.my_home.visit_car.model.service;

import com.kh.onepart.resident.my_home.visit_car.model.vo.VisitCarVo;

public interface VisitCarService {

	//방문차량 등록용 메소드
	int registerVisitCar(VisitCarVo requestVisitCarVo);

}
