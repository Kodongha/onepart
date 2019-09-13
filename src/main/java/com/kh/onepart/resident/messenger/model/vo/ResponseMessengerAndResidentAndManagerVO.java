package com.kh.onepart.resident.messenger.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResponseMessengerAndResidentAndManagerVO {

	/*메시지 전송*/
	private int messengerSeq;
	private String messengerSender;
	private String messengerReceiver;
	private String messengerContent;
	private String managerEnrollDt;
	private String readTm;
	private String messengerEnrollDt;

}
