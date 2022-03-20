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
					<button type="button" class="btn_nav" onclick="location.href='/member/modifyMember.me'">회원정보 수정</button>
					<button type="button" class="btn_nav_sel"">회원 탈퇴</button>
			</div>
			<br><br><br>
			<div class="content">
				
				<fieldset>
					<legend>회원 탈퇴</legend>
					<h5 style="font-weight: bold;">
						사용하고 계신 아이디는 탈퇴를 할 경우, <br>
						재사용 및 복구가 불가능합니다.<br>
						탈퇴 후 회원정보와 이용기록 모두 삭제되고,<br>
						이 서비스를 이전과 같이 이용하실 수 없습니다.
						</h5>
				</fieldset>
				<br>
				<div style=" color: grey; font-weight:bold;">
					<input type="checkbox" id="check_delete"> &nbsp;&nbsp;안내사항을 확인하였으며, 이에 동의합니다.
				</div>
				
				<br>
				<button class="btn_submit" id="deleteMemberButton" onclick="deleteButton();">회원 탈퇴</button>
				
				<div class="footer">
				<br><br>
					<button type="button" onclick="location.href='/'">홈으로</button>
					&nbsp;
					<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>		
				</div>
			</div>
		</div>
	</div>
	<br><br>
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