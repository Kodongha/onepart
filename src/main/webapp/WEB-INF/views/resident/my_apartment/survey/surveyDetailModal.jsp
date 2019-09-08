<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){

		// 모달창 이동
		$('.modal-dialog').draggable({
		      handle: ".modal-header"
		});


		$('#enrollBtn').click(function(){

			$('[name=answer]').each(function(){

				console.log("type : " + $(this).attr('type'));

				if($(this).attr('type') == 'radio' && $(this).is(":checked")){
					console.log($(this).val());
				} else if($(this).attr('type') == 'checkbox' && $(this).is(":checked")){
					console.log($(this).val());
				}
				//console.log($(this).val());
			});

		});

	})

</script>
</head>
<body>
	<!-- #modal-dialog -->
	<div class="modal fade" id="modal-dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 class="modal-title">설문조사</h3>
				</div>
				<div class="modal-body">
					<h4><c:out value="${ surveyVO.surveyTitle }"/></h4>
					<p><c:out value="${ surveyVO.surveySimpleIntro }"/></p>

					<div>
						<c:forEach var="surveyQstn" items="${surveyQstnList }">
							<h4><c:out value="[${ surveyQstn.surveyQstnNum }] "/><c:out value="${surveyQstn.surveyQstnTitle }"/></h4>

							<!-- 단답형 -->
							<c:if test="${surveyQstn.surveyQstnType == 1 }">
								<input type="text" class="form-control" placeholder="내용을 입력해주세요." name="answer">
							</c:if>

							<!-- 장문형 -->
							<c:if test="${surveyQstn.surveyQstnType == 2 }">
								<textarea class="form-control" placeholder="내용을 입력해주세요." rows="5" name="answer"></textarea>
							</c:if>

							<!-- 객관식 -->
							<c:if test="${surveyQstn.surveyQstnType == 3 }">
								<c:forEach var="surveyQstnOption" items="${surveyQstnOptionList}">
									<c:if test="${surveyQstnOption.surveyQstnSeq == surveyQstn.surveyQstnSeq}">
										<h4>
											<input type="radio" data-render="switchery" data-theme="default" name="answer" id="${surveyQstnOption.surveyQstnSeq}_${surveyQstnOption.surveyQstnOptionNum}" value="${surveyQstnOption.surveyQstnOptionContent}">
											<label for="${surveyQstnOption.surveyQstnSeq}_${surveyQstnOption.surveyQstnOptionNum}"><c:out value="${surveyQstnOption.surveyQstnOptionContent}"/></label>
										</h4>
									</c:if>
								</c:forEach>
							</c:if>

							<!-- 체크박스 -->
							<c:if test="${surveyQstn.surveyQstnType == 4 }">
								<c:forEach var="surveyQstnOption" items="${surveyQstnOptionList}">
									<c:if test="${surveyQstnOption.surveyQstnSeq == surveyQstn.surveyQstnSeq}">
										<h4>
											<input type="checkbox" data-render="switchery" data-theme="default" name="answer" id="${surveyQstnOption.surveyQstnSeq}_${surveyQstnOption.surveyQstnOptionNum}" value="${surveyQstnOption.surveyQstnOptionContent}">
											<label for="${surveyQstnOption.surveyQstnSeq}_${surveyQstnOption.surveyQstnOptionNum}"><c:out value="${surveyQstnOption.surveyQstnOptionContent}"/></label>
										</h4>
									</c:if>
								</c:forEach>
							</c:if>
							<hr>
						</c:forEach>
					</div>
				</div>

				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal" id="close">닫기</a>
					<a class="btn btn-sm btn-primary" id="enrollBtn">완료</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>