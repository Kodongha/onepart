<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo&display=swap"
	rel="stylesheet">
<style>
.format{display:none;}
#about {
	text-align: center;
	color: #fafafa;
	font: normal small Arial, Helvetica;
}

#about a {
	color: #777;
}

/* --------------- */
#pricing-table {
	margin: 100px auto 50px auto;
	text-align: center;
	display: table;
}

#pricing-table .plan {
	text-shadow: 0 1px rgba(255, 255, 255, .8);
	background: #fff;
	border: 1px solid #ddd;
	color: #333;
	padding: 20px;
	width: 180px; /* plan width = 180 + 20 + 20 + 1 + 1 = 222px */
	float: left;
	position: relative;
}

#pricing-table #most-popular {
	padding-bottom: 7px !important;
	z-index: 2;
	top: -13px;
	font-family: 'Nanum Myeongjo', serif !important;
	display: table;
	border-width: 3px;
	margin: 0px 20px;
	padding: 30px 20px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px
		-10px rgba(0, 0, 0, .15);
	-webkit-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px
		-10px rgba(0, 0, 0, .15);
	box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px
		rgba(0, 0, 0, .15);
}

#pricing-table .plan:nth-child(1) {
	-moz-border-radius: 5px 0 0 5px;
	-webkit-border-radius: 5px 0 0 5px;
	border-radius: 5px 0 0 5px;
}

#pricing-table .plan:nth-child(4) {
	-moz-border-radius: 0 5px 5px 0;
	-webkit-border-radius: 0 5px 5px 0;
	border-radius: 0 5px 5px 0;
}

/* --------------- */
#pricing-table #most-popular h3 {
	font-weight: bold;
	font-size: 30px;
	padding-top: 20px !important;
	padding: 20px;
	margin: -20px -20px 50px -20px;
	background-color: #ddd;
	background-image: -moz-linear-gradient(#00acac, #ddd);
	background-image: -webkit-gradient(linear, left top, left bottom, from(#00acac),
		to(#ddd));
	background-image: -webkit-linear-gradient(#00acac, #ddd);
	background-image: -o-linear-gradient(#00acac, #ddd);
	background-image: -ms-linear-gradient(#00acac, #ddd);
	background-image: linear-gradient(#00acac, #ddd);
	margin-top: -30px;
	padding-top: 30px;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
}

#pricing-table h3 span {
	display: block;
	font: bold 33px/52px 'Nanum Myeongjo', serif;
	color: #777;
	background: #fff;
	border: 5px solid #fff;
	height: 51px;
	width: 175px;
	margin: 10px auto -51px;
	-moz-border-radius: 100px;
	-webkit-border-radius: 100px;
	border-radius: 100px;
	-moz-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
	-webkit-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
	box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
	width: 175px;
	margin: 10px auto -51px;
}

/* --------------- */
#pricing-table ul {
	margin: 20px 0 0 0;
	padding: 0;
	list-style: none;
}

#pricing-table li {
	font-size: 20px;
	border-top: 1px solid #ddd;
	padding: 10px 0;
}

/* --------------- */
#pricing-table .signup {
	position: relative;
	padding: 8px 20px;
	margin: 20px 0 0 0;
	color: #fff;
	text-transform: uppercase;
	text-decoration: none;
	display: inline-block;
	background-color: #72ce3f;
	background-image: -moz-linear-gradient(#72ce3f, #62bc30);
	background-image: -webkit-gradient(linear, left top, left bottom, from(#72ce3f),
		to(#62bc30));
	background-image: -webkit-linear-gradient(#72ce3f, #62bc30);
	background-image: -o-linear-gradient(#72ce3f, #62bc30);
	background-image: -ms-linear-gradient(#72ce3f, #62bc30);
	background-image: linear-gradient(#72ce3f, #62bc30);
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	text-shadow: 0 1px 0 rgba(0, 0, 0, .3);
	-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, .5), 0 2px 0
		rgba(0, 0, 0, .7);
	-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .5), 0 2px 0
		rgba(0, 0, 0, .7);
	box-shadow: 0 1px 0 rgba(255, 255, 255, .5), 0 2px 0 rgba(0, 0, 0, .7);
}
</style>


</head>
<body>

	<div id="pricing-table" class="clear">

	</div>







		<div class="plan format" id="most-popular">
			<h3>
				차량번호<span class="carNum"></span>
			</h3>

			<ul>
				<li><b>주소 : </b><span class="bdNm"></span><span>동</span><span class="rmNm"></span><span>호</span></li>
				<li><b>차주 : </b><span class="residentNm"></span></li>
				<li><b>차종 : </b><span class="carType"></span></li>
				<li><b>차명 : </b><span class="carNm"></span></li>
				<li><b>용도 : </b><span class="enrollPurpose"></span></li>
			</ul>
		</div>


</body>
<script>
$(function() {
	getMyCarList();
});
function getMyCarList() {
			$.ajax({
				url : '/onepart/resident/getMyCarList',
				type : 'post',
				data : {},
				dataType: 'json',
				success : function(data) {
						console.log(data)
					if(data.result == "success") {
						let carList = data.myCarList;
						drawMyCarList(carList);
					}
				},
				error : function(err) {
					alert('차량 목록 가져오기에 실패했습니다.');
				}
			});
		}


function drawMyCarList(carList) {
	let listDiv = $('#pricing-table');
	listDiv.html('');

	carList.forEach(carInfo => {
		let carDivFormat = $('.plan format').clone();
		carDivFormat.removeClass('format');
		carDivFormat.show();

		carDivFormat.find('.carNum').text(carInfo.carNm);
		carDivFormat.find('.bdNm').text(carInfo.openChatCurrHead);
		carDivFormat.find('.rmNm').text(carInfo.openChatCurrHead);
		carDivFormat.find('.residentNm').text(carInfo.openChatCurrHead);
		carDivFormat.find('.carType').text(carInfo.openChatCurrHead);
		carDivFormat.find('.carNm').text(carInfo.openChatCurrHead);
		carDivFormat.find('.enrollPurpose').text(carInfo.openChatCurrHead);

		listDiv.append(carDivFormat);
	});
}
</script>
</html>