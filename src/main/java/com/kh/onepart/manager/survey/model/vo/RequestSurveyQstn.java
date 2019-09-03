package com.kh.onepart.manager.survey.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RequestSurveyQstn {

	private int surveyQstnNum;
	private String surveyQstnTitle;
	private String[] surveyQstnNece;
	private int surveyQstnType;
	private RequestSurveyQstnOption[] surveyQstnOption;



}
