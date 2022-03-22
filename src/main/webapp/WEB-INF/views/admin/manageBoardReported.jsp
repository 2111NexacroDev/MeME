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
			height: 40px;
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
			/* 총 너비 600으로 맞춤 (수정, 삭제 버튼 50)*/
			#tbl_one {
				width: 60px;
			}
			
			#tbl_two {
				width: 60px;
			}
			
			#tbl_three {
				width: 230px;
			}
			
			#tbl_four {
				width: 100px;
			}
			
			#tbl_five {
				width: 100px;
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
	
</style>
</head>
<body>


	<div class="inner" align="center">
		<div class="body">
			
			<div id="mypageNavi">
				<button type="button" class="btn_nav" onclick="location.href='/admin/manageMember.me'">회원 관리</button>
				<button type="button" class="btn_nav" onclick="location.href='/admin/manageMeme.me'">유행어 사전 관리</button>
				<button type="button" class="btn_nav_sel" onclick="location.href='/admin/manageBoard.me'">추진/자유게시판 관리</button>
				<button type="button" class="btn_nav" onclick="location.href='/admin/manageQuiz.me'">퀴즈 관리</button>
			</div><br>
			<div id="subnav">
				<button type="button" onclick="location.href='/admin/manageBoard.me'">전체 글 목록</button>&nbsp;&nbsp;
				<button type="button" class="btn_subnav_sel" onclick="location.href='/admin/manageBoardReported.me'">신고된 글 목록</button>&nbsp;&nbsp;
 				<button type="button" onclick="location.href='/admin/manageBoardNStatus.me'">숨겨진 글 목록</button>
			</div>
			<br>
			
			<div class="content">
				<table align="center" border="1">
					<tr class="header">
						<th id="tbl_one">구분</th>
						<th id="tbl_two">글번호</th>
						<th id="tbl_three">글제목</th>
						<th id="tbl_four">작성자</th>
						<th id="tbl_five">작성일</th>
						<th id="tbl_six">신고수</th>
						<th colspan="2">&nbsp;</th>
					</tr>
					<c:forEach items="${reportBoardList }" var="reportBoardList">
						<tr class="tbl_body">
							<td id="part">
								<c:if test="${reportBoardList.boardType eq 'P'}">
			    					추진
								</c:if>
								<c:if test="${reportBoardList.boardType eq 'F'}">
			    					자유
								</c:if>
							</td>
							<td id="no">${reportBoardList.boardNo }</td>
							<c:url var="bDetail" value="/board/detail">
								<c:param name="boardNo" value="${reportBoardList.boardNo }"></c:param>
							</c:url>
							<td id="title"><a href="${bDetail }">${reportBoardList.boardTitle }</a></td>
							<td id="writer">${reportBoardList.memberNickname }</td>
							<td id="date">${reportBoardList.boardDate }</td>
							<td id="reports">${reportBoardList.boardReport }</td>
							<td id="delete">
								<form action='<c:url value="/board/detail_reportAdminToN">
									<c:param name="boardNo" value="${reportBoardList.boardNo }"></c:param>
									</c:url>' method="post">
									<button type="submit" class="btn_del">숨김</button>
								</form>
							</td>
							<td id="delete">
								<form action='<c:url value="/board/detail_delete_admin">
									<c:param name="boardNo" value="${reportBoardList.boardNo }"></c:param>
									</c:url>' method="post">
									<button type="submit" class="btn_del">삭제</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<p></p>
		<div style="text-align:center" class="pi">
			<c:if test="${pi.startNavi gt 1 }">
				<button style="height:25px; width:55px">이전</button>
			</c:if>
			<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
				<c:url var="pagination" value="/admin/manageBoardReported.me">
					<c:param name="page" value="${p }"></c:param>
				</c:url>
				<a href="${pagination }">${p }</a>&nbsp;
			</c:forEach>
			<c:if test="${pi.endNavi lt maxPage }">
				<button style="height:25px; width:55px">다음</button>
			</c:if>
		</div>
		<p></p>
		<div class="footer">
			<button type="button" onclick="location.href='/'">홈으로</button>
			<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>		
		</div>
	</div>
</body>
</html>