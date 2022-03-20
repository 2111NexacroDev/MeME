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
	position : absolute;
	width : 800px;
	top : 250px;
	left : 50%;
	margin-left : -400px;
	}
	
	#mypageNavi {
	/* 	background-color : #75582F; */
		width: 800px;
		height: 40px;
		text-align: center;
	}
	#subnav {
		text-align: left;
		height: 100px;
		width: 600px;
	}
	.header {
		color: white;
		background-color: #f26522;
		height: 30px;
		text-align: center;
	}
	.body {
		height : 80%;
		margin-top : 5px;
	}
	button {
		color : #252525;
		font-weight: bold;
		border-radius: 5px;
		transition-duration: 0.5s;
		background-color : #f9f9f9;
	}
	button:hover {
		color : #f26522;
		transition-duration: 0.5s;
	}
	#ipt {
		margin-bottom : 10px;
		padding-left : 15px;
		height : 40px;
		width : 350px;
		border-radius: 5px;
		border: 1px solid #808080;
		background-color : #f9f9f9;
	}
	#ipt:focus {
		border: 1px solid #f26522;
		background-color : #ededed;
	}
	.btn_nav {
		font-size: 16px;
	    color: #ffffff;
	    background-color: #252525;
		width: 170px;
		height: 40px;
		padding-top: 3px;
		transition-duration: 0.5s;
	}
	.btn_nav:hover {
		background-color: #f26522;
	    color: #ffffff;
	    transition-duration: 0.5s;
	}
	.btn_nav_sel {
		font-size: 16px;
	    color: #ffffff;
	    background-color: #f26522;
		width: 170px;
		height: 40px;
		padding-top: 3px;
	}
	.btn_nav_sel:hover {
		background-color: #f26522;
	    color: #ffffff;
	    transition-duration: 0.5s;
	}
	.btn_submit {
		font-size: 16px;
	    color: #ffffff;
	    background-color: #252525;
		width: 350px;
		height: 60px;
		padding-top: 5px;
		transition-duration: 0.5s;
	}
	.btn_submit:hover {
		background-color: #f26522;
	    color: #ffffff;
	    transition-duration: 0.5s;
	}
	.btn_rtn {
	margin-top: 5px;
	}
	
	#tbl_one {
		width: 35px;
	}
	
	#tbl_two {
		width: 50px;
	}
	
	#tbl_three {
		width: 150px;
	}
	
	#tbl_four {
		width: 100px;
	}
	
	#tbl_five {
		width: 50px;
	}
	
	#tbl_six {
		width: 50px;
	}
	.sub {
		font-size: smaller;
	}
	.btn_subnav_sel {
		color : #f26522;
	}
	.btn_mod {
		background-color: blue;
		color : #ffffff;
	}
	.btn_del {
		background-color: red;
		color : #ffffff;
	}
	.tbl_body {
		text-align: center;
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
					<li><a href="/admin/manageBoard.me">전체 글 목록</a></li>
					<li><a href="/admin/manageBoardReported.me">신고된 글 목록</a></li>
					<li>숨겨진 글 목록</li>
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
					<c:forEach items="${statusNBoardList }" var="statusNBoardList">
						<tr>
							<td id="part">
								<c:if test="${statusNBoardList.boardType eq 'P'}">
			    					추진
								</c:if>
								<c:if test="${statusNBoardList.boardType eq 'F'}">
			    					자유
								</c:if>
							</td>
							<td id="no">${statusNBoardList.boardNo }</td>
							<c:url var="bDetail" value="/board/detail">
								<c:param name="boardNo" value="${statusNBoardList.boardNo }"></c:param>
							</c:url>
							<td id="title"><a href="${bDetail }">${statusNBoardList.boardTitle }</a></td>
							<td id="writer">${statusNBoardList.memberNickname }</td>
							<td id="date">${statusNBoardList.boardDate }</td>
							<td id="views">${statusNBoardList.boardCount }</td>
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