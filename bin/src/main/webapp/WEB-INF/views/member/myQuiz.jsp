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
	/* 	position: absolute; */
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
	/* 	height: 75%; */
	}
	.pi {
		height : 8%;
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
		width: 60px;
	}
	
	#no {
		width: 250px;
	}
	
	#title {
		width: 100px;
	}
	
	#date {
		width: 100px;
	}
	
	#like {
		width: 50px;
	}
	
	#comment {
		width: 50px;
	}
	#delete {
		width: 35px;
	}
	
	.header {
		color: white;
		background-color: #A64E08 ;
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
			<br><br>
			<div id="mypageNavi">
			<ul>
				<li>내가 쓴 글</li>
				<li><a href="/member/myComment.me">내가 쓴 댓글</a></li>
				<li><a href="/member/modifyMember.me">회원정보 수정</a></li>
				<li><a href="/member/deleteMember.me">회원 탈퇴</a></li>
			</ul>
			<br>
			<ul class="sub">
				<li><a href="/myPage.me">유행어추진/자유게시판</a></li>
				<li>퀴즈</li>
			</ul>
			</div>
			
			<br>
			
			<table align="center" border="1" text-align="center" style="background-color:white">
				<tr class="header">
					<td id="part">유형</td>
					<td id="no">문제</td>
					<td id="title">답</td>
					<td id="date">작성일</td>
					<td colspan="2"></td>
				</tr>
				<c:forEach items="${myQuizList }" var="myQuizList">
					<tr>
						<td>
							<c:if test="${myQuizList.quizType eq 'O'}">
		    					O/X
							</c:if>
							<c:if test="${myQuizList.quizType eq 'S'}">
		    					단답형
							</c:if>
							<c:if test="${myQuizList.quizType eq 'M'}">
		    					객관식
							</c:if>
						</td>
						<td>${myQuizList.quizQuest }</td>
						<td>${myQuizList.quizAnswer }</td>
						<td>${myQuizList.quizDate }</td>
						<td>
							<form action='<c:url value="/quiz/modifyView.me">
								<c:param name="quizNo" value="${myQuizList.quizNo }"></c:param>
								</c:url>' method="post">
								<button type="submit">수정</button>
							</form>
						</td>
						<td>
							<form action='<c:url value="/quiz/delete.me">
								<c:param name="quizNo" value="${myQuizList.quizNo }"></c:param>
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
				<c:url var="pagination" value="/member/myQuiz.me">
					<c:param name="page" value="${p }"></c:param>
				</c:url>
				<a href="${pagination }">${p }</a>&nbsp;
			</c:forEach>
			<c:if test="${pi.endNavi lt maxPage }">
				<button style="height:25px; width:55px">다음</button>
			</c:if>
		</div>
		<div class="footer">
			<button type="button" onclick="location.href='/'">홈으로</button>
			<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>
		</div>
	</div>
</body>
</html>