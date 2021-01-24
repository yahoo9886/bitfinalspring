<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

</head>
<body>

	<div class="rsv__container">
		<h2 class="rsv__title">병원예약</h2>
		<h3 class="rsv__section_title">산넘어산</h3>
		<p class="rsv__section_txt">
			영업시간: 월~ 금 8:30~ 16:00<br>
		<hr>
		<form action="insert" method="post">
			<div class="rsv__section1">
				<input type="text" id="rsv__select_date" name="rdate"
					placeholder="예약날짜를 선택하세요." /> <input type="text"
					id="rsv__select_time" class="rsv__select" name="rtime"
					placeholder="예약시간을 선택하세요."/>
			</div>
			<div class="rsv__section2">
				<input type="text" name="rmnum" class="rsv__select"
					required="required" placeholder="성함를 입력해주세요."> <input
					type="text" name="rdmnum" class="rsv__select" required="required"
					placeholder="병원를 입력해주세요.">
				<textarea id="rsv__memo" name="rmemo" class="rsv__select"
					placeholder="증상을 입력해주세요 " required="required"></textarea>
			</div>		
		<div class="rsv__section3">
			<hr>
			<button type="submit" class="rsv__writeformbtn">예약하기</button>
		</div>
		</form>
	</div>

</body>
<script type="text/javascript">
$("#rsv__select_date").flatpickr({ 
inline: true,
dateFormat: "Y-m-d",
minDate:"today",//오늘이전은 선택불가 

//maxDate: new Date().fp_incr(30) //오늘로부터 30일이후까지만 선택가능

});

$("#rsv__select_time").flatpickr({ 
	enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    
    minTime: "08:00",
    maxTime: "20:00",
    minuteIncrement : "30"	
	});
</script>

</html>