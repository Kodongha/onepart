package com.kh.onepart.resident.residentMeeting.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onepart.resident.residentMeeting.dao.ResidentMeetingDao;
import com.kh.onepart.resident.residentMeeting.vo.ResidentAllInfo;
import com.kh.onepart.resident.residentMeeting.vo.ResidentMeetingVO;

@Service
public class ResidentMeetingServiceImpl implements ResidentMeetingService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	ResidentMeetingDao residentMeetingDao;

	/** 입주자 대표 회의 메인페이지 */
	@Override
	public ArrayList<ResidentMeetingVO> selectMeetingInfo() {
		// TODO Auto-generated method stub

		return residentMeetingDao.selectMeetingInfoList(sqlSession);
	}

	/** 입주민 정보 가져오기 */
	@Override
	public ArrayList<ResidentAllInfo> selectResidentVOList() {
		// TODO Auto-generated method stub
		return residentMeetingDao.selectResidentVOList(sqlSession);
	}

}
