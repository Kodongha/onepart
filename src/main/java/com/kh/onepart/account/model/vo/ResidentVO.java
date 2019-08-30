package com.kh.onepart.account.model.vo;

import java.sql.Date;

public class ResidentVO {

	private int residentSeq;
	private String residentId;
	private String residentPwd;
	private String residentNm;
	private String residentPhone;
	private String residentEmail;
	private int aptDetailInfoSeq;
	private int householdAuthType;
	private Date residentEnrollDt;
	private String leaveTf;
	private int aptAuthCd;
	private Date leaveDt;
	
	public ResidentVO() {
		// TODO Auto-generated constructor stub
	}

	public ResidentVO(int residentSeq, String residentId, String residentPwd, String residentNm, String residentPhone,
			String residentEmail, int aptDetailInfoSeq, int householdAuthType, Date residentEnrollDt, String leaveTf,
			int aptAuthCd, Date leaveDt) {
		super();
		this.residentSeq = residentSeq;
		this.residentId = residentId;
		this.residentPwd = residentPwd;
		this.residentNm = residentNm;
		this.residentPhone = residentPhone;
		this.residentEmail = residentEmail;
		this.aptDetailInfoSeq = aptDetailInfoSeq;
		this.householdAuthType = householdAuthType;
		this.residentEnrollDt = residentEnrollDt;
		this.leaveTf = leaveTf;
		this.aptAuthCd = aptAuthCd;
		this.leaveDt = leaveDt;
	}

	public int getResidentSeq() {
		return residentSeq;
	}

	public void setResidentSeq(int residentSeq) {
		this.residentSeq = residentSeq;
	}

	public String getResidentId() {
		return residentId;
	}

	public void setResidentId(String residentId) {
		this.residentId = residentId;
	}

	public String getResidentPwd() {
		return residentPwd;
	}

	public void setResidentPwd(String residentPwd) {
		this.residentPwd = residentPwd;
	}

	public String getResidentNm() {
		return residentNm;
	}

	public void setResidentNm(String residentNm) {
		this.residentNm = residentNm;
	}

	public String getResidentPhone() {
		return residentPhone;
	}

	public void setResidentPhone(String residentPhone) {
		this.residentPhone = residentPhone;
	}

	public String getResidentEmail() {
		return residentEmail;
	}

	public void setResidentEmail(String residentEmail) {
		this.residentEmail = residentEmail;
	}

	public int getAptDetailInfoSeq() {
		return aptDetailInfoSeq;
	}

	public void setAptDetailInfoSeq(int aptDetailInfoSeq) {
		this.aptDetailInfoSeq = aptDetailInfoSeq;
	}

	public int getHouseholdAuthType() {
		return householdAuthType;
	}

	public void setHouseholdAuthType(int householdAuthType) {
		this.householdAuthType = householdAuthType;
	}

	public Date getResidentEnrollDt() {
		return residentEnrollDt;
	}

	public void setResidentEnrollDt(Date residentEnrollDt) {
		this.residentEnrollDt = residentEnrollDt;
	}

	public String getLeaveTf() {
		return leaveTf;
	}

	public void setLeaveTf(String leaveTf) {
		this.leaveTf = leaveTf;
	}

	public int getAptAuthCd() {
		return aptAuthCd;
	}

	public void setAptAuthCd(int aptAuthCd) {
		this.aptAuthCd = aptAuthCd;
	}

	public Date getLeaveDt() {
		return leaveDt;
	}

	public void setLeaveDt(Date leaveDt) {
		this.leaveDt = leaveDt;
	}

	@Override
	public String toString() {
		return "ResidentVO [residentSeq=" + residentSeq + ", residentId=" + residentId + ", residentPwd=" + residentPwd
				+ ", residentNm=" + residentNm + ", residentPhone=" + residentPhone + ", residentEmail=" + residentEmail
				+ ", aptDetailInfoSeq=" + aptDetailInfoSeq + ", householdAuthType=" + householdAuthType
				+ ", residentEnrollDt=" + residentEnrollDt + ", leaveTf=" + leaveTf + ", aptAuthCd=" + aptAuthCd
				+ ", leaveDt=" + leaveDt + "]";
	}
}
