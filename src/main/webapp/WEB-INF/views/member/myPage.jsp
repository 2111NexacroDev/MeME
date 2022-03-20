<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
			<div id="mypageNavi">
					<button type="button" class="btn_nav_sel">내가 쓴 글</button>
					<button type="button" class="btn_nav" onclick="location.href='/member/myComment.me'">내가 쓴 댓글</button>
					<button type="button" class="btn_nav" onclick="location.href='/member/modifyMember.me'">회원정보 수정</button>
					<button type="button" class="btn_nav" onclick="location.href='/member/deleteMember.me'">회원 탈퇴</button>
			</div>
			<div id="subnav">
				<br>
					<button type="button" class="btn_subnav_sel">유행어추진/자유게시판</button>
				&nbsp;&nbsp;
					<button type="button" onclick="location.href='/member/myQuiz.me'">퀴즈</button>
			</div>
			<table align="center" border="1" style="background-color:white">
				<tr class="header">
					<td id="tbl_one">구분</td>
					<td id="tbl_two">글번호</td>
					<td id="tbl_three">글제목</td>
					<td id="tbl_four">작성일</td>
					<td id="tbl_five">추천수</td>
					<td id="tbl_six">댓글수</td>
					<td colspan="2">&nbsp;</td>
				</tr>
				
				<c:forEach items="${myBoardList }" var="myBoardList">
					<tr class="tbl_body">
						<td>
							<c:if test="${myBoardList.boardType eq 'P'}">
		    					추진
							</c:if>
							<c:if test="${myBoardList.boardType eq 'F'}">
		    					자유
							</c:if>
						</td>
						<td>${myBoardList.boardNo }</td>
						
						<c:url var="bDetail" value="/board/detail">
							<c:param name="boardNo" value="${myBoardList.boardNo }"></c:param>
						</c:url>
						<td width="200px"><a href="${bDetail}">${myBoardList.boardTitle }</a></td>
						<td>${myBoardList.boardDate }</td>
						<td>${myBoardList.boardCount }</td>
						<td>${myBoardList.boardLike }</td>
						<td>
							<form action='<c:url value="/board/detail_updateView">
								<c:param name="boardNo" value="${myBoardList.boardNo }"></c:param>
								</c:url>' method="post">
								<button type="submit" class="btn_mod">수정</button>
							</form>
						</td>
						<td>
							<form action='<c:url value="/board/detail_delete_mypage">
								<c:param name="boardNo" value="${myBoardList.boardNo }"></c:param>
								</c:url>' method="post">
								<button type="submit" class="btn_del">삭제</button>
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
				<c:url var="pagination" value="/myPage.me">
					<c:param name="page" value="${p }"></c:param>
				</c:url>
				<a href="${pagination }">${p }</a>&nbsp;
			</c:forEach>
			<c:if test="${pi.endNavi lt maxPage }">
				<button style="height:25px; width:55px">다음</button>
			</c:if>
			<div class="footer">
				<button "type="button" onclick="location.href='/'">홈으로</button>
				<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>		
			</div>
		</div>
		
	</div>
</body>
</html>