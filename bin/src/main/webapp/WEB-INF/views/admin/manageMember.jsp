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
/* 		height: 600px; */
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
	
	#member-id {
		text-align: center;
		font-size: smaller;
		width: 100px;
		
	}
	
	#nickname {
		text-align: center;
		font-size: smaller;
		width: 100px;
	}
	
	#name {
		text-align: center;
		font-size: smaller;
		width: 100px;
	}
	
	#email {
		text-align: center;
		font-size: smaller;
		width: 400px;
	}
	
	#date {
		text-align: center;
		font-size: smaller;
		width: 200px;
	}
	#delete {
		text-align: center;
		font-size: smaller;
		width: 50px;
	}
	.header {
		color: white;
		background-color: #A64E08  ;
		height: 30px;
	}
	
	
	.content table td{
		font-size: smaller;
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
					<li>회원 관리</li>
					<li><a href="/admin/manageMeme.me">유행어 사전 관리</a></li>
					<li><a href="/admin/manageBoard.me">추진/자유게시판 관리</a></li>
					<li><a href="/admin/manageQuiz.me">퀴즈 관리</a></li>
				</ul>
			</div>
			
			<div class="content">
				<table align="center" border="1">
					<tr class="header">
						<th id="member-id">아이디</th>
						<th id="nickname">닉네임</th>
						<th id="name">이름</th>
						<th id="email" colspan="2">이메일</th>
					</tr>
					<c:forEach items="${allMemberList }" var="allMemberList">
						<tr>
							<td>${allMemberList.memberId }</td>
							<td>${allMemberList.memberNickname }</td>
							<td>${allMemberList.memberName }</td>
							<td>${allMemberList.memberEmail }</td>
							<td id="delete">삭제</td>
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
					<c:url var="pagination" value="/admin/manageMember.me">
						<c:param name="page" value="${p }"></c:param>
					</c:url>
					<a href="${pagination }">${p }</a>&nbsp;
				</c:forEach>
				<c:if test="${pi.endNavi lt maxPage }">
					<button style="height:25px; width:55px">다음</button>
				</c:if>
			</div>
		</div>
		<div style="text-align:center" class="pi">
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