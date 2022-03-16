<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
	.inner {
/* 		position: absolute; */
		width: 700px;
		height: 600px;
		top: 50%;
		left: 50%;
		text-align: center;
		margin: auto;
	/* 	margin-top: -250px; */
	/* 	margin-left: -350px; */
		background-color: #f9f9f9;
	}
	
	.body {
/* 		height: 80%; */
	}
	.content {
		height : 60%;
		width : 80%;
		margin: auto;
		text-align: center;
	}
	.pi {
		height : 10%;
	}
	.footer {
		height : 10%;
	}

	#mypageNavi {
	/* 	background-color : #75582F; */
		font-weight: bold;
		width: 500px;
		height: 50px;
		text-align: center;
		margin: auto;
	}
	
	#mypageNavi ul {
		list-style-type : none;
		padding-left : 50px;
	}
	
	#mypageNavi li {
		color : #DB4000;
		float : left;
	/* 	background-color : white; */
		padding-right : 10px;
		text-align : center;
	}
	#mypageNavi li a {
		color : black;
		display : block;
		text-decoration : none;
		text-align : center;
	}
	#mypageNavi li a.current {
		color : white;
		background-color : #DB4000;
	}
	
	#part {
		text-align: center;
		font-size: smaller;
		width: 40px;
		
	}
	
	#no {
		text-align: center;
		font-size: smaller;
		width: 50px;
	}
	
	#title {
		text-align: center;
		font-size: smaller;
		width: 200px;
	}
	
	#writer {
		text-align: center;
		font-size: smaller;
		width: 80px;
	}
	
	#date {
		text-align: center;
		font-size: smaller;
		width: 100px;
	}
	
	#views {
		text-align: center;
		font-size: smaller;
		width: 50px;
	}
	#delete {
		text-align: center;
		font-size: smaller;
		width: 35px;
	}
	
	.header {
		color: white;
		background-color: #A64E08  ;
		height: 30px;
	}
	
	.sub {
		font-size: smaller;
	}
	button {
		color : #8F2B00;
	}
</style>
</head>
<body>


	<div class="inner" align="center">
		<div class="body">

			<br>
			<div id="mypageNavi">
				<ul>
					<li><a href="/admin/manageMember.me">회원 관리</a></li>
					<li><a href="/admin/manageMeme.me">유행어 사전 관리</a></li>
					<li>추진/자유게시판 관리</li>
					<li><a href="/admin/manageQuiz.me">퀴즈 관리</a></li>
				</ul>
				<br>
				<ul class="sub">
					<li>전체 글 목록</li>
					<li><a href="/admin/manageBoardReported.me">신고된 글 목록</a></li>
<!-- 					<li><a href="/admin/manageBoardStatus.me">숨겨진 글 목록</a></li> -->
				</ul>
			</div>
			
			<br>
			<div class="content">
				<table align="center" border="1">
					<tr class="header">
						<th id="part">구분</th>
						<th id="no">글번호</th>
						<th id="title">글제목</th>
						<th id="writer">작성자</th>
						<th id="date">작성일</th>
						<th id="views">조회수</th>
					</tr>
					<c:forEach items="${allBoardList }" var="allBoardList">
						<tr>
							<td id="part">
								<c:if test="${allBoardList.boardType eq 'P'}">
			    					추진
								</c:if>
								<c:if test="${allBoardList.boardType eq 'F'}">
			    					자유
								</c:if>
							</td>
							<td id="no">${allBoardList.boardNo }</td>
							<c:url var="bDetail" value="/board/detail">
								<c:param name="boardNo" value="${allBoardList.boardNo }"></c:param>
							</c:url>
							<td id="title"><a href="${bDetail }">${allBoardList.boardTitle }</a></td>
							<td id="writer">${allBoardList.memberNickname }</td>
							<td id="date">${allBoardList.boardDate }</td>
							<td id="views">${allBoardList.boardCount }</td>
							<td id="delete">
								<form action='<c:url value="/board/detail_delete_mypage">
									<c:param name="boardNo" value="${allBoardList.boardNo }"></c:param>
									</c:url>' method="post">
									<button type="submit">삭제</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<p></p>
			<div style="text-align:center" class="pi">
				<c:if test="${pi.startNavi gt 1 }">
					<button style="height:25px; width:55px">이전</button>
				</c:if>
				<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
					<c:url var="pagination" value="/admin/manageBoard.me">
						<c:param name="page" value="${p }"></c:param>
					</c:url>
					<a href="${pagination }">${p }</a>&nbsp;
				</c:forEach>
				<c:if test="${pi.endNavi lt maxPage }">
					<button style="height:25px; width:55px">다음</button>
				</c:if>
			</div>
		</div>
		<p></p>
		<div class="footer">
			<button type="button" onclick="location.href='/'">홈으로</button>
			<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>		
		</div>
	</div>
</body>
</html>