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
	#deleteMemberButton {
		background-color : #8F2B00;
		color: white;
	}
	button {
		color : #8F2B00;
	}
	
	.content {
		width : 80%;
		height : 70%;
		background-color : white;
		text-align: center;
		margin : auto;
		padding-top : 10px;
		padding-bottom : 10px;
	}
	
	.content_body {
		background-color : #f9f9f9;
		
		margin-left: 50px;
		width : 80%;
		height : 40%;
		padding-top : 15px;
		padding-bottom : 5px;
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
					<li><a href="/member/modifyMember.me">회원정보 수정</a></li>
					<li>회원 탈퇴</li>
				</ul>
			</div>
			
			<br> <br>
			<div class="content">
			<p></p>
				<h3>회원 탈퇴</h3>
				<div class="content_body">
					<h5 style="font-weight: bold;">
					사용하고 계신 아이디는 탈퇴를 할 경우, <br>
					재사용 및 복구가 불가능합니다.<br>
					탈퇴 후 회원정보와 이용기록 모두 삭제되고,<br>
					이 서비스를 이전과 같이 이용하실 수 없습니다.
					</h5>
				</div>
				<br>
				<div style=" color: #75582F; font-weight:bold;">
					<input type="checkbox" id="check_delete"> 안내사항을 확인하였으며, 이에 동의합니다.
				</div>
				
				<br>
				<button id="deleteMemberButton" onclick="deleteButton();">회원 탈퇴</button>
				<p></p>
			</div>
		</div>
	<p></p>	
		
		<button type="button" onclick="location.href='/'">홈으로</button>
		<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>
	</div>
	
<script>
	function deleteButton() {
		var test = document.getElementById("check_delete");
		if(test.checked == true) {
			location.href="/member/remove.me?memberId=${loginMember.memberId }";
		}else {
			alert("동의에 체크해주세요!");
		}
		
	}
</script>
</body>
</html>