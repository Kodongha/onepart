package com.kh.onepart.manager.notice.controller;

import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.manager.notice.model.service.NoticeManagerService;
import com.kh.onepart.manager.notice.model.vo.NoticeManager;

/*@Controller*/
public class NoticeManagerController {
	/*
	 * @Autowired NoticeManagerService nms;
	 * 
	 * @RequestMapping(value="/resident/menuNotice", method = RequestMethod.GET)
	 * public ModelAndView menuNotice(ModelAndView mv, HttpServletRequest request,
	 * int noticeSeq, String noticeTitle, String noticeContent) {
	 * System.out.println("/menuNotice");
	 * 
	 * ArrayList<NoticeManager> list = nms.selectNoticeManager(noticeSeq);
	 * 
	 * mv.addObject("list", list); mv.setViewName("/manager/");
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value="/manager/NoticeWrite", method= RequestMethod.POST)
	 * public ModelAndView moveNoticeWrite(ModelAndView mv, String noticeTitle,
	 * String noticeContent, Date noticeEnrollDt) {
	 * System.out.println("/moveNoticeWrite");
	 * 
	 * NoticeManager nm = new NoticeManager();
	 * 
	 * nm.setNoticeTitle(noticeTitle); nm.setNoticeContent(noticeContent);
	 * nm.setNoticeEnrollDt(noticeEnrollDt);
	 * 
	 * ArrayList<NoticeManager> list = nms.noticeWrite();
	 * 
	 * mv.addObject("list", list); mv.setViewName("");
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping() public ModelAndView moveNoticeUpdate(ModelAndView mv) {
	 * System.out.println("/moveNoticeUpdate"); ModelAndView mv = new
	 * ModelAndView("noticeUpdate"); ArrayList<NoticeManager> list =
	 * nms.noticeUpdate();
	 * 
	 * mv.addObject("list", list); mv.setViewName("");
	 * 
	 * return mv; }
	 */
}








