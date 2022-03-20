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
	width : 900px;
	top : 250px;
	left : 50%;
	margin-left : -450px;
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
	}
	.content {
		margin-top: -80px;
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
		width: 50px;
	}
	
	#tbl_two {
		width: 50px;
	}
	
	#tbl_three {
		width: 500px;
	}
	
	#tbl_four {
		width: 100px;
	}
	
	#tbl_five {
		width: 100px;
	}
	
	#tbl_six {
		width: 130px;
	}
	#tbl_seven {
		width: 60px;
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
				<button type="button" class="btn_nav" onclick="location.href='/admin/manageMember.me'">회원 관리</button>
				<button type="button" class="btn_nav" onclick="location.href='/admin/manageMeme.me'">유행어 사전 관리</button>
				<button type="button" class="btn_nav" onclick="location.href='/admin/manageBoard.me'">추진/자유게시판 관리</button>
				<button type="button" class="btn_nav_sel" onclick="location.href='/admin/manageQuiz.me'">퀴즈 관리</button>
			</div><br>
			<div id="subnav">
				<button type="button" class="btn_subnav_sel" onclick="location.href='/admin/manageQuiz.me'">전체 퀴즈 목록</button>&nbsp;&nbsp;
				<button type="button" class="btn_subnav" onclick="location.href='/admin/manageQuizReported.me'">신고된 퀴즈 목록</button>&nbsp;&nbsp;
			</div>
			
			<br>
			<div class="content">
				<table align="center" border="1">
					<tr class="header">
						<th id="tbl_one">유형</th>
						<th id="tbl_two">번호</th>
						<th id="tbl_three">퀴즈내용</th>
						<th id="tbl_four">정답</th>
						<th id="tbl_five">출제자</th>
						<th id="tbl_six">작성일</th>
						<th id="tbl_seven">&nbsp;</th>
					</tr>
					<c:forEach items="${allQuizList }" var="allQuizList">
						<tr class="tbl_body">
							<td>
								<c:if test="${allQuizList.quizType eq 'O'}">
			    					O/X
								</c:if>
								<c:if test="${allQuizList.quizType eq 'S'}">
			    					단답형
								</c:if>
								<c:if test="${allQuizList.quizType eq 'M'}">
			    					객관식
								</c:if>
							</td>
							<td>${allQuizList.quizNo }</td>
							<td>${allQuizList.quizQuest }</td>
							<td>${allQuizList.quizAnswer }</td>
							<td>${allQuizList.memberId }</td>
							<td>${allQuizList.quizDate }</td>
							<td>
							<form action='<c:url value="/quiz/delete.me">
								<c:param name="quizNo" value="${allQuizList.quizNo }"></c:param>
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
					<c:url var="pagination" value="/admin/manageQuiz.me">
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
		<p></p>
	</div>
</body>
</html>
