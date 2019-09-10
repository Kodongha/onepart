package com.kh.onepart.batch.controller;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

@Controller
public class BatchController {


	@Scheduled(cron="0 16 4 * * *")
	public void batchTest1(){
		System.out.println("배치다!!!!");
	}

	@Scheduled(cron="0 16 4 * * *")
	public void batchTest2(){
		System.out.println("배치다2222222222!!!!");
	}

}
