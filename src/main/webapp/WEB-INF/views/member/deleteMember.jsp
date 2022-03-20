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
	.header {
		color: white;
		background-color: #f26522;
		height: 30px;
		text-align: center;
	}
	.body {
		height : 80%;
		margin-top : 5px;
	}
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
	
	#tbl_one {
		width: 60px;
	}
	
	#tbl_two {
		width: 50px;
	}
	
	#tbl_three {
		width: 300px;
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
	.sub {
		font-size: smaller;
	}
	.btn_subnav_sel {
		color : #f26522;
	}
	.btn_mod {
		background-color: blue;
		color : #ffffff;
	}
	.btn_del {
		background-color: red;
		color : #ffffff;
	}
	.tbl_body {
		text-align: center;
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
				<p></p>
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
				<div style=" color: #75582F; font-weight:bold;">
					<input type="checkbox" id="check_delete"> 안내사항을 확인하였으며, 이에 동의합니다.
				</div>
				
				<br>
				<button class="btn_submit" id="deleteMemberButton" onclick="deleteButton();">회원 탈퇴</button>
				<p></p>
			</div>
		</div>
		<div class="footer">
			<button type="button" onclick="location.href='/'">홈으로</button>
			<button type="button" onclick="location.href='/member/logout.me'">로그아웃</button>		
		</div>
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