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
		height: 25px;
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
	
	
	.header {
		color: white;
		background-color: #A64E08 ;
		height: 30px;
	}
	
	
		#part {
			width: 60px;
		}
		
		#no {
			width: 50px;
		}
		
		#title {
			width: 200px;
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
		
	.sub {
		font-size: smaller;
	}
	
	button {
		color : #8F2B00;
	}
</style>
</head>
<body>

	<div class="inner" align="center" >
		<div class="body">
			<br>
			<br>
			<div id="mypageNavi">
				<ul>
					<li><a href="/myPage.me">내가 쓴 글</a></li>
					<li>내가 쓴 댓글</li>
					<li><a href="/member/modifyMember.me">회원정보 수정</a></li>
					<li><a href="/member/deleteMember.me">회원 탈퇴</a></li>
				</ul>
			</div>
			
			<br>
			<table align="center" border="1" style="background-color:white">
				<tr class="header">
					<td id="part">댓글번호</td>
					<td id="no">글번호</td>
					<td id="title">댓글 내용</td>
					<td id="date">작성일</td>
				</tr>
				<c:forEach items="${myCommentList }" var="myComment">
					<tr>
						<td>${myComment.commentNo }</td>
						<c:url var="bDetail" value="/board/detail">
							<c:param name="boardNo" value="${myComment.boardNo }"></c:param>
						</c:url>
						<td><a href="${bDetail}">${myComment.boardNo }</a></td>
						
						<td>${myComment.commentContents }</td>
						<td>${myComment.commentDate }</td>
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
				<c:url var="pagination" value="/member/myComment.me">
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