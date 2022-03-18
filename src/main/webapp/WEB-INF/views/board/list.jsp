<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 게시글 리스트 (board 메인페이지) -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style>
	#boardWriteButton {
		height:30px;
		width:700px;
		text-align: right;
		margin: auto;
		margin-bottom: 5px;
	}
		
		/* 주황색 */
/* 		#writeButton {
     		border : 1px solid #f26522;
     		background-color: #fef3ee;
     		color: #f26522;
			--border-radius : 5px;
			padding : 5px 8px;
			font-size:13px;
			font-weight: bold;
     	} */
     	
     	/* 검정색 */
		#writeButton {
     		border : 1px solid grey;
     		background-color: #ffffff;
     		color: black;
			--border-radius : 5px;
			padding : 5px 8px;
			font-size:13px;
			font-weight: bold;
     	}
		
	#boardTable{
		border: 1px solid black;
		width:700px;
		text-align: center;
		margin: auto;
	}
	#boardTable th{
		height: 30px;
		background-color:#f26522  ;
		color:  white;
	}
	
	#boardTable th, td{
		border: 1px solid black;
	}
	
</style>
</head>
<body>
<br>

	<!-- 글쓰기 버튼 -->
	<div id="boardWriteButton">
		<button type="button" id="writeButton" onclick="boardWriteFunc();">
			<i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기
		</button>
	</div>
	
	
	<table id="boardTable">
		<tr>
			<th>번호</th>
			<th>분류</th>
			<th width="300px">글제목</th>
			<th>작성자</th>
			<th>작성날짜</th>
			<th>조회수</th>
		</tr>

		<c:forEach items="${boardAllList }" var="boardAllList">
			<tr>
				<td>${boardAllList.boardNo }</td>
				<td>
					<c:if test="${boardAllList.boardType eq 'P'}">
    					추진
					</c:if>
					<c:if test="${boardAllList.boardType eq 'F'}">
    					자유
					</c:if>
				</td>
				
				<c:url var="bDetail" value="/board/detail">
					<c:param name="boardNo" value="${boardAllList.boardNo }"></c:param>
				</c:url>
				<td><a href="${bDetail}">${boardAllList.boardTitle }</a></td>
				<td>${boardAllList.memberNickname }</td>
				<td>${boardAllList.boardDate }</td>
				<td>${boardAllList.boardCount }</td>
			</tr>
		</c:forEach>
		
	</table>

	<br>
	<br>
	
	<div>
	<div style="text-align:center">
	<c:if test="${pi.startNavi gt 1 }">
		<button style="height:25px; width:55px">이전</button>
	</c:if>
	<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
		<c:url var="pagination" value="/board">
			<c:param name="page" value="${p }"></c:param>
		</c:url>
		<a href="${pagination }">${p }</a>&nbsp;
	</c:forEach>
	<c:if test="${pi.endNavi lt maxPage }">
		<button style="height:25px; width:55px">다음</button>
	</c:if>
	
	</div>
	</div>
	<br>
	<form action="/board/search" method="post">
		<div style="text-align:center">
			<select name="type" style="height:30px; width:80px">
				<option value="0" style="text-align: center">분류</option>
				<option value="F" style="text-align: center">자유</option>
				<option value="P" style="text-align: center">추진</option>
				<option value="title" style="text-align: center">글제목</option>
				<option value="writer" style="text-align: center">작성자</option>
			</select>
			<input type="text" name="keyword" style="height:30px; width:250px">
			<button type="submit" style="height:30px; width:100px">Search</button>
		</div>
	</form>

	<script>
		function boardWriteFunc(){
			<c:if test="${empty sessionScope.loginMember }">
				alert("로그인이 필요합니다.");
	   		</c:if>
	   		<c:if test="${not empty loginMember }">
	   			location.href="/board/write";
	        </c:if>
		}
		
		function searchBtn() {
			alert("검색");
		}
	</script>
</body>
</html>