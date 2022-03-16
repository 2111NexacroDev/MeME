<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		background-color: #8F2B00 ;
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
	#modifyMemberButton {
		background-color : #8F2B00;
		color: white;
	}
	button {
		color : #8F2B00;
	}
</style>
</head>
<body>

	<div class="inner" align="center">
		<div class="body">
			<br> <br>
			<div id="mypageNavi">
				<ul>
					<li><a href="/myPage.me">내가 쓴 글</a></li>
					<li><a href="/member/myComment.me">내가 쓴 댓글</a></li>
					<li>회원정보 수정</li>
					<li><a href="/member/deleteMember.me">회원 탈퇴</a></li>
				</ul>
			</div>
			
			<br>
<!-- 			<h3>회원정보 수정</h3> -->
			<form action="/member/modifyMember.me" method="POST">
				<table align="center" border="1">
					<tr>
						<th width="80px">아이디</th>
						<td><input type="text" name="memberId" readonly value="${member.memberId }"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="memberPw" required></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="memberName" readonly value="${member.memberName }"></td>
					</tr>
					<tr>
						<th>닉네임</th>
						<td><input type="text" name="memberNickname" readonly value="${member.memberNickname }"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="memberEmail" value="${member.memberEmail }" required></td>
					</tr>
				</table>
				<p></p>
				<button id="modifyMemberButton" type="submit">정보수정</button>
			</form>

		</div>
		<p></p>
		<button type="button" onclick="location.href='/'">홈으로</button>
		<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>
	</div>
</body>
</html>