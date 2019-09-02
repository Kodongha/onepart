package com.kh.onepart.resident.warm.open_chatting.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OpenChatNoticeVO {
	private int		openChatNoticeSeq;			// 오픈채팅 방별 공지사항 고유번호 (pk)
	private String	openChatNoticeContent;		// 공지사항 내용
	private String	openChatNoticeEnrollDt;		// 등록일자
	private int		openChatSeq;				// 오픈채팅 방 고유번호
}
