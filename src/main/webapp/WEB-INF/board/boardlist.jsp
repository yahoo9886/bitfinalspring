<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<link rel="stylesheet" href="${root}/css/board/boardmain.css" />

</head>
<body>

	<div class="board_layout">
	
		<div class ="board_main">
		<h3>의료정보 커뮤니티</h3>
		<div style ="display : flex; justify-content : center;">
		<div class="hashtagform">
			<span>해시태그를 통해서 검색해 보세요!</span>
			<div class="hashtag">
				<span class="glyphicon glyphicon-ok"></span> 수진이
			</div>
		</div>

		</div>
		</div>
		<div class="search">
			<h3>#해시태그 검색</h3>
			<input type="text" class ="board_textfield" />
			<button type="button" class ="board_searchbtn">검색하기</button>
		</div>
		<hr>
		
	<table class ="table table-bordered">
	<tr bgcolor = "#ddd">
		<th style ="width : 60px;">번호</th>
		<th style ="width : 400px;">제목</th>
		<th style ="width : 80px;">작성자</th>
		<th style ="width : 120px;">작성일</th>
		<th style ="width : 60px;">조회</th>
		
	</tr>
	<c:forEach var ="a" items ="${list}">
		<tr style="cursor:pointer" onclick="location.href='content?num=${a.bnum}&pageNum=${currentPage}&key=list'">
			<td align="center">
			</td>

			<td>
			<a href="location.href='content?num=${a.bnum }&pageNum=${currentPage}&key=list"></a>
			<c:forEach var ="sp" begin ="1" end ="${a.relevel}">
			&nbsp;&nbsp;&nbsp;
			</c:forEach>
			<c:if test="${a.restep>0}">
			<img src="../image/re.png">
			</c:if><a>
			${a.bsubject }
			
			<td align ="center">
			${a.bwriter}
			</td>
			<td align = "center">
			<fmt:formatDate value="${a.bwritedate}" pattern="yyyy-MM-dd"/>
			</td>
			<td align ="center">
			${a.readcount}
			</td>
		
		</tr>
	
	</c:forEach>
	
</table>
		
		<div class="boardlist">
			<div class="boardleft">
				<h4>제목</h4>
				<div class="boardcontent">
					본문
					<p>14일 방송되는 SBS 예능프로그램 ‘맛남의 광장’fdgsdfsdgd에서는 백종원, 양세형, 김희철, 유병재, 김동준이 게스트
						이지아와 함께 제철 시금치 소비 촉진을 위해 포항으로 향하는 모습이 그려진다.</p>
				</div>
			</div>
			<div class="boardright">
				<img src="https://dispatch.cdnser.be/wp-content/uploads/2017/08/20170816091129_5.jpg"
					style="width: 200px; height: 200px;"/>
			</div>

		</div>
	
		<hr>
	</div>
	
	<div style ="width:800px;text-align:center;">
	<ul class ="pagination">
		<c:forEach var="pp" begin="${startPage}" end="${endPage}">
          <c:if test="${pp==currentPage}">
             <li class="active">
                <a href="list?pageNum=${pp}">${pp}</a>
             </li>
          </c:if>
          <c:if test="${pp!=currentPage}">
             <li>
                <a href="list?pageNum=${pp}">${pp}</a>
             </li>
          </c:if>
       </c:forEach>
       <c:if test="${endPage<totalPage}">
       <li>
          <a href="list?pageNum=${endPage+1}">다음</a>
       </li>
       </c:if>

	</ul>
	</div>
	
	<button type ="button" class = "board_write_btn" onclick="location.href='board/boardwrite'">글쓰기</button>
	
	
</body>
</html>