package com.kh.onepart.batch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import com.kh.onepart.batch.model.service.BatchService;

@Controller
public class BatchController {

	@Autowired
	BatchService batchService;


	/** delete the messenger 7 days ago */
	@Scheduled(cron="0 1 0 * * *")
	public void deleteMessenger(){
		// 쪽지 - 7일 이전 메신저 삭제
		batchService.deleteMessenger();
	}

















	/** ====================== 머지해라 ====================== */
	@Scheduled(cron="0 50 23 * * *")
	public void batchTest2(){

		for(int i=0; i<1000; i++) {
			System.out.println("====================== [ 00:00s는 머지 시간입니다. 빨리 올려주세요. ]======================");
			System.out.println("====================== [ 00:00s는 머지 시간입니다. 빨리 올려주세요. ]======================");
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


}
