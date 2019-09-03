package com.kh.onepart.resident.warm.open_chatting.model.service;

import java.util.List;

import com.kh.onepart.account.model.vo.ResidentVO;
import com.kh.onepart.resident.warm.open_chatting.model.vo.OpenChatVO;

public interface OpenChatService {
	public void createRoom(OpenChatVO openChatVO);
	public List<OpenChatVO> getRoomListAll();
	public void setCurrHead(int openChatSeq);
	public List<ResidentVO> getResidentList(int openChatSeq);
}
