package com.kh.onepart.resident.messenger.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.onepart.common.PageInfo;
import com.kh.onepart.resident.messenger.model.vo.ManagerAndDeptVO;
import com.kh.onepart.resident.messenger.model.vo.RequestMessengerVO;
import com.kh.onepart.resident.messenger.model.vo.ResponseMessengerAndResidentAndManagerVO;

@Repository
public class MessengerDaoImpl implements MessengerDao {

	/**  쪽지 작성 */
	@Override
	public void insertMessenger(SqlSessionTemplate sqlSession, RequestMessengerVO requestMessengerVO) {
		// TODO Auto-generated method stub

		sqlSession.insert("Messenger.insertMessenger", requestMessengerVO);
	}

	/** 타입별 쪽지 카운트 */
	@Override
	public int selectMessengerCount(SqlSessionTemplate sqlSession, RequestMessengerVO requestMessengerVO) {
		// TODO Auto-generated method stub

		int messengerCount = sqlSession.selectOne("Messenger.selectMessengerCount", requestMessengerVO);

		return messengerCount;
	}

	/** 타입별 쪽지 리스트 */
	@Override
	public ArrayList<ResponseMessengerAndResidentAndManagerVO> selectMessengerList(SqlSessionTemplate sqlSession,
			PageInfo pi, RequestMessengerVO requestMessengerVO) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		ArrayList<ResponseMessengerAndResidentAndManagerVO> responseMessengerAndResidentAndManagerVOList = (ArrayList) sqlSession.selectList("Messenger.selectMessengerList", requestMessengerVO, rowBounds);

		return responseMessengerAndResidentAndManagerVOList;
	}

	/** 직원 명단 조회 */
	@Override
	public ArrayList<ManagerAndDeptVO> selectManagerList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub

		return (ArrayList) sqlSession.selectList("Messenger.selectManagerList");
	}

}
