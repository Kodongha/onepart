package com.kh.onepart.resident.convenience.reservate_facility.model.vo;

public class Reservation implements java.io.Serializable{

	private int facSeq;
	private String facNm;
	private String facPosition;
	private String facAvailWeekOfDay;
	private String facAvailTm;
	private int facDefaultFee;
	private int facMaxHead;
	private int facSquareMeasure;
	private String qrImgPath;
	private String facDetailInfo;
	private String facRsrvInfo;
	private String facUseInfo;
	private String facCaution;
	private int facType;

	public Reservation() {}

	public Reservation(int facSeq, String facNm, String facPosition, String facAvailWeekOfDay, String facAvailTm,
			int facDefaultFee, int facMaxHead, int facSquareMeasure, String qrImgPath, String facDetailInfo,
			String facRsrvInfo, String facUseInfo, String facCaution, int facType) {
		super();
		this.facSeq = facSeq;
		this.facNm = facNm;
		this.facPosition = facPosition;
		this.facAvailWeekOfDay = facAvailWeekOfDay;
		this.facAvailTm = facAvailTm;
		this.facDefaultFee = facDefaultFee;
		this.facMaxHead = facMaxHead;
		this.facSquareMeasure = facSquareMeasure;
		this.qrImgPath = qrImgPath;
		this.facDetailInfo = facDetailInfo;
		this.facRsrvInfo = facRsrvInfo;
		this.facUseInfo = facUseInfo;
		this.facCaution = facCaution;
		this.facType = facType;
	}

	public int getFacSeq() {
		return facSeq;
	}

	public void setFacSeq(int facSeq) {
		this.facSeq = facSeq;
	}

	public String getFacNm() {
		return facNm;
	}

	public void setFacNm(String facNm) {
		this.facNm = facNm;
	}

	public String getFacPosition() {
		return facPosition;
	}

	public void setFacPosition(String facPosition) {
		this.facPosition = facPosition;
	}

	public String getFacAvailWeekOfDay() {
		return facAvailWeekOfDay;
	}

	public void setFacAvailWeekOfDay(String facAvailWeekOfDay) {
		this.facAvailWeekOfDay = facAvailWeekOfDay;
	}

	public String getFacAvailTm() {
		return facAvailTm;
	}

	public void setFacAvailTm(String facAvailTm) {
		this.facAvailTm = facAvailTm;
	}

	public int getFacDefaultFee() {
		return facDefaultFee;
	}

	public void setFacDefaultFee(int facDefaultFee) {
		this.facDefaultFee = facDefaultFee;
	}

	public int getFacMaxHead() {
		return facMaxHead;
	}

	public void setFacMaxHead(int facMaxHead) {
		this.facMaxHead = facMaxHead;
	}

	public int getFacSquareMeasure() {
		return facSquareMeasure;
	}

	public void setFacSquareMeasure(int facSquareMeasure) {
		this.facSquareMeasure = facSquareMeasure;
	}

	public String getQrImgPath() {
		return qrImgPath;
	}

	public void setQrImgPath(String qrImgPath) {
		this.qrImgPath = qrImgPath;
	}

	public String getFacDetailInfo() {
		return facDetailInfo;
	}

	public void setFacDetailInfo(String facDetailInfo) {
		this.facDetailInfo = facDetailInfo;
	}

	public String getFacRsrvInfo() {
		return facRsrvInfo;
	}

	public void setFacRsrvInfo(String facRsrvInfo) {
		this.facRsrvInfo = facRsrvInfo;
	}

	public String getFacUseInfo() {
		return facUseInfo;
	}

	public void setFacUseInfo(String facUseInfo) {
		this.facUseInfo = facUseInfo;
	}

	public String getFacCaution() {
		return facCaution;
	}

	public void setFacCaution(String facCaution) {
		this.facCaution = facCaution;
	}

	public int getFacType() {
		return facType;
	}

	public void setFacType(int facType) {
		this.facType = facType;
	}

	@Override
	public String toString() {
		return "Reservation [facSeq=" + facSeq + ", facNm=" + facNm + ", facPosition=" + facPosition
				+ ", facAvailWeekOfDay=" + facAvailWeekOfDay + ", facAvailTm=" + facAvailTm + ", facDefaultFee="
				+ facDefaultFee + ", facMaxHead=" + facMaxHead + ", facSquareMeasure=" + facSquareMeasure
				+ ", qrImgPath=" + qrImgPath + ", facDetailInfo=" + facDetailInfo + ", facRsrvInfo=" + facRsrvInfo
				+ ", facUseInfo=" + facUseInfo + ", facCaution=" + facCaution + ", facType=" + facType + "]";
	}



}
