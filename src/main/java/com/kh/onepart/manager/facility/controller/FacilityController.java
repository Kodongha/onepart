package com.kh.onepart.manager.facility.controller;


import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.onepart.common.CommonUtils;
import com.kh.onepart.manager.facility.model.service.FacliltyService;
import com.kh.onepart.manager.facility.model.vo.FacReservation;
import com.kh.onepart.manager.facility.model.vo.Image;
import com.kh.onepart.manager.facility.model.vo.Reservation;

@Controller
public class FacilityController {
	@Autowired
	private FacliltyService fs;

	@RequestMapping("/manager/menuFacility")
	public ModelAndView menuFacility(ModelAndView mv) {
		System.out.println("/menuFacility11");

		//아파트 시설물 리스트 불러오는 메소드
		ArrayList list = fs.selectAllReservation();

		//모든시설물 예약 리스트 불러오는 메소드
		ArrayList reservationList = fs.selectAllUserReservation();

		mv.addObject("reservationList", reservationList);
		mv.addObject("list", list);
		mv.setViewName("/manager/facility/facility_main");

		return mv;
	}

	@RequestMapping("/manager/facility_reservationDetail")
	public ModelAndView facility_reservationDetail(ModelAndView mv, int facRsrvSeq) {
		System.out.println("facRsrvSeq : " + facRsrvSeq);

		//해당 시설물 예약 내역 불러오는 메소드
		FacReservation fr = fs.selectOneUserReservation(facRsrvSeq);

		mv.addObject("fr", fr);
		mv.setViewName("/manager/facility/facility_detail");

		return mv;
	}

	@RequestMapping("/manager/newFacility_general")
	public String newFacility_general() {
		System.out.println("/menuFacility!!!");

		return "/manager/facility/facility_new_general";
	}

	@RequestMapping("/manager/insert_newFacility_general")
	public String insert_newFacility_general(MultipartHttpServletRequest req, Reservation reserv, HttpServletRequest request) {
		System.out.println("/menuFacility");
		System.out.println("전송객체 : " + reserv);

		List<MultipartFile> mf = req.getFiles("files");

		System.out.println("mf 사이즈 : " + mf.size());

		ArrayList<Image> imgArr = new ArrayList<Image>();
		if (mf.size() == 1 && mf.get(0).getOriginalFilename().equals("")) {

        } else {
            for (int i = 0; i < mf.size(); i++) {
                // 파일 중복명 처리
                String genId = CommonUtils.getRandomString();
                // 본래 파일명
                String originalfileName = mf.get(i).getOriginalFilename();

                System.out.println("originalfileName : " + originalfileName);

                String saveFileName = genId + "." + originalfileName.substring(originalfileName.lastIndexOf("."));
                // 저장되는 파일 이름

                String root = request.getSession().getServletContext().getRealPath("resources");
        		String filePath = root + "\\uploadFiles\\reservation";

                // 저장 될 파일 경로

                long fileSize = mf.get(i).getSize(); // 파일 사이즈

                Image img = new Image();
                img.setOriginNm(originalfileName);
                img.setChangeNm(saveFileName);
                img.setFilePath(filePath);

                imgArr.add(img);

                try {
					mf.get(i).transferTo(new File(filePath + "\\" + saveFileName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // 파일 저장

            }
        }

		for(int i = 0; i < imgArr.size(); i++) {
			System.out.println("list fileName : " + imgArr.get(i).getOriginNm());
		}
		//예약 시설물 insert하는 메소드
		int facSeq = fs.insertReservationGeneral(reserv, imgArr);

		System.out.println("insert end... : " + facSeq);


		return "/manager/facility/facility_new_general";
	}

	@RequestMapping("/manager/newFacility_seat")
	public String newFacility_seat() {
		System.out.println("/menuFacility");
		return "/manager/facility/facility_new_seat";
	}

	@RequestMapping("/manager/facility_modify_general")
	public ModelAndView facility_modify_general(ModelAndView mv, int facSeq) {
		System.out.println("해당 시설물 번호 : " + facSeq);

		//해당 시설물 리스트 불러오는 메소드
		Reservation rs = fs.selectOneGeneralReservation(facSeq);

		mv.addObject("rs", rs);
		mv.setViewName("/manager/facility/facility_modify_general");

		return mv;
	}

	@RequestMapping("/manager/facility_modify_seat")
	public String facility_modify_seat() {
		System.out.println("/menuFacility");
		return "/manager/facility/facility_modify_seat";
	}

	@RequestMapping("/manager/successReservation")
	public ModelAndView successReservation(ModelAndView mv, int facRsrvSeq) {
		System.out.println("/menuFacility");

		//해당 예약건 예약완료 처리하는 메소드
		int result = fs.updatesuccessReservation(facRsrvSeq);

		mv.setViewName("jsonView");

		return mv;
	}

	@RequestMapping("/manager/failReservation")
	public ModelAndView failReservation(ModelAndView mv, int facRsrvSeq) {
		System.out.println("/menuFacility");

		//해당 예약건 예약반려 처리하는 메소드
		int result = fs.updatefailReservation(facRsrvSeq);

		mv.setViewName("jsonView");

		return mv;
	}

	@RequestMapping("/manager/update_facility_general")
	public ModelAndView update_facility_general(ModelAndView mv, Reservation reserv) {
		System.out.println("/menuFacility");
		System.out.println("전송객체 : " + reserv);

		//해당 시설물 수정하는 메소드
		int result = fs.updateFacilityGeneral(reserv);

		mv.setViewName("jsonView");

		return mv;
	}

	@RequestMapping("/manager/facility_delete_general")
	public ModelAndView facility_delete_general(ModelAndView mv, int facSeq) {
		System.out.println("/facility_delete_general");

		//해당 시설물 삭제하는 메소드
		int result = fs.deleteFacliltyGeneral(facSeq);

		mv.setViewName("jsonView");

		return mv;
	}
}
