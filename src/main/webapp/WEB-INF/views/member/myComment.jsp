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
	
	.body {
		height : 80%;
	}
	
	/* 네비 */
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
	
	.content {
		margin-top: -20px;
	}
	
		table {
			background-color:white;
			border:1px solid #ccc;
			text-align: center;
		}
			table td {
				padding: 3px;
			}
			/* table header */
			.header {
				color: white;
				background-color: #f26522;
				height: 30px;
			}
			.tbl_body {
				
			}
			
			/* 총 너비 550 으로 맞춤 수정 삭제 버튼 50*/
			#tbl_one {
				width: 100px;
			}
			
			#tbl_two {
				width: 80px;
			}
			
			#tbl_three {
				width: 400px;
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
			
	
	/* 버튼 스타일 */
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
	
		/* #mypageNavi */
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
		
		/* #subnav */
		.btn_subnav_sel {
			color : #f26522;
		}
		
		/* 수정, 삭제 버튼 */
		.btn_mod, .btn_del { 
			background-color: #ffffff;
			--color : #ffffff;
			font-weight: normal;
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
	
	/* input */
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

	
</style>
</head>
<body>

	<div class="inner" align="center" >
		<div class="body">
			<div id="mypageNavi">
					<button type="button" class="btn_nav" onclick="location.href='/myPage.me'">내가 쓴 글</button>
					<button type="button" class="btn_nav_sel">내가 쓴 댓글</button>
					<button type="button" class="btn_nav" onclick="location.href='/member/modifyMember.me'">회원정보 수정</button>
					<button type="button" class="btn_nav" onclick="location.href='/member/deleteMember.me'">회원 탈퇴</button>
			</div>
			<div id="subnav">
			</div>
			<div class="content">
				<table align="center" border="1" style="background-color:white">
					<tr class="header">
						<td id="tbl_one">댓글번호</td>
						<td id="tbl_two">글번호</td>
						<td id="tbl_three">댓글 내용</td>
						<td id="tbl_four">작성일</td>
					</tr>
					<c:forEach items="${myCommentList }" var="myComment">
						<tr class="tbl_body">
							<td>${myComment.commentNo }</td>
							<td>${myComment.boardNo }</td>
							<c:url var="bDetail" value="/board/detail">
								<c:param name="boardNo" value="${myComment.boardNo }"></c:param>
							</c:url>
							<td><a href="${bDetail}">${myComment.commentContents }</a></td>
							<td>${myComment.commentDate }</td>
						</tr>
					</c:forEach>
				</table>
				<br>
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
					<br>
					<button type="button" onclick="location.href='/'">홈으로</button>
					&nbsp;
					<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>		
				</div>
			</div>
		</div>
	</div>
</body>
</html>