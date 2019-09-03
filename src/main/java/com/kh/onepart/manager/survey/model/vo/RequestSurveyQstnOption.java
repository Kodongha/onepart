package com.kh.onepart.manager.survey.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RequestSurveyQstnOption {

	private int urveyQstnOptionSeq;
	private int urveyQstnOptionNum;
	private String urveyQstnOptionContent;
	private int urveyQstnSeq;

}
