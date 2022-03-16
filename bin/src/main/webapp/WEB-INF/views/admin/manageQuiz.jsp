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
		top: 50%;
		left: 50%;
		text-align: center;
		margin: auto;
/* 		border: 1px solid black; */
	/* 	margin-top: -250px; */
	/* 	margin-left: -350px; */
		background-color: #f9f9f9;
	}
	
	.body {
/* 		height: 80%; */
	}
	.content {
		height : 60%;
		width : 100%;
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
		width: 150px;
	}
	
	#no {
		text-align: center;
	font-size: smaller;
		width: 50px;
	}
	
	#question {
		text-align: center;
	font-size: smaller;
		width: 500px;
	}
	
	#answer {
		text-align: center;
		font-size: smaller;
		width: 200px;
	}
	
	#writer {
		text-align: center;
		font-size: smaller;
		width: 100px;
	}
	
	#date {
		text-align: center;
		font-size: smaller;
		width: 200px;
	}
	
	#views {
		text-align: center;
 		font-size: smaller; 
		width: 50px;
	}
	#delete {
		text-align: center;
		font-size: smaller;
		width: 40px;
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
					<li><a href="/admin/manageBoard.me">추진/자유게시판 관리</a></li>
					<li>퀴즈 관리</li>
				</ul>
				<br>
				<ul class="sub">
					<li>전체 퀴즈 목록</li>
					<li><a href="/admin/manageQuizReported.me">신고된 퀴즈 목록</a></li>
				</ul>
			</div>
			
			<br>
			<div class="content">
				<table align="center" border="1">
					<tr class="header">
						<th id="part">유형</th>
						<th id="no">번호</th>
						<th id="question">퀴즈내용</th>
						<th id="answer">정답</th>
						<th id="writer">출제자</th>
						<th id="date">작성일</th>
						<th id="delete">&nbsp</th>
					</tr>
					<c:forEach items="${allQuizList }" var="allQuizList">
						<tr>
							<td id="part">
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
							<td id="no">${allQuizList.quizNo }</td>
							<td id="question">${allQuizList.quizQuest }</td>
							<td id="answer">${allQuizList.quizAnswer }</td>
							<td id="writer">${allQuizList.memberId }</td>
							<td id="date">${allQuizList.quizDate }</td>
							<td id="delete">
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
