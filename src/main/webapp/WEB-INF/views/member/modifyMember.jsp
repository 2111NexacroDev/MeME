<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		width : 270px;
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

	<div class="inner" align="center">
		<div class="body">
			<div id="mypageNavi">
					<button type="button" class="btn_nav" onclick="location.href='/myPage.me'">내가 쓴 글</button>
					<button type="button" class="btn_nav" onclick="location.href='/member/myComment.me'">내가 쓴 댓글</button>
					<button type="button" class="btn_nav_sel">회원정보 수정</button>
					<button type="button" class="btn_nav" onclick="location.href='/member/deleteMember.me'">회원 탈퇴</button>
			</div>
			<div id="subnav">
			
			</div>
			<div class="content">
			
				<form action="/member/modifyMember.me" method="POST">
					<table align="center">
						<tr>
							<th width="80px">아이디</th>
							<td><input id="ipt" type="text" name="memberId" readonly value="${member.memberId }"></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input id="ipt" type="password" name="memberPw" required></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input id="ipt" type="text" name="memberName" readonly value="${member.memberName }"></td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td><input id="ipt" type="text" name="memberNickname" readonly value="${member.memberNickname }"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input id="ipt" type="text" name="memberEmail" value="${member.memberEmail }" required></td>
						</tr>
					</table>
					<br>
					<button class="btn_submit" id="modifyMemberButton" type="submit">정보수정</button>
				</form>
				<div class="footer">
				<br>
					<button type="button" onclick="location.href='/'">홈으로</button>
					&nbsp;
					<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>
				</div>
				<br><br><br><br><br><br>
			</div>
		</div>
	</div>
	
</body>
</html>