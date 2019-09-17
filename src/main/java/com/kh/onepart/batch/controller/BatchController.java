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

	@Scheduled(cron="0 16 4 * * *")
	public void batchTest2(){
		System.out.println("배치다2222222222!!!!");
	}

}
