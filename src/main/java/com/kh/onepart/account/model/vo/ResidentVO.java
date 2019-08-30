package com.kh.onepart.account.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
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

}
