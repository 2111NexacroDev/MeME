<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전 상세 페이지</title>
<style>
 .main {
	text-align: center;
} 
 .main .dtail {
	text-align: left;
}

#memeDtatilName {
	font-size: 20px;
	font-weight: bold;
	font-style:italic;
	text-align: left;
	background: linear-gradient(to top, #ccc 50%, transparent 50%);
}

#memeDtailDate {
	padding-left: 20px;
}

<<<<<<< HEAD
#memeDetailContents {
	color: black;
 	padding-left: 10px;
  	line-height:150%;

=======
#memeDetailTable {
	width: 700px;
	background-color: white;
	border: 1px solid black;
	text-align: center;
	margin: auto;
>>>>>>> refs/remotes/origin/master
}
#title_name {
	font-weight: bold;
}
</style>
</head>
<body>
<!-- 	<div>
		<br>
		<h1 id="title_name" align="center">유행어 사전</h1>
		<br>
		<hr>
	</div> -->

 	<div class="main"> 
		<br>
		<div class="dtail" id="memeName"> 
			<span id="memeDtatilName">' &nbsp; ${meme.memeName} &nbsp; '</span>
		</div>
		<br>
		<div class="dtail">
			<span id="memeDtailDate">${meme.memeDate}</span>
		</div>
		<br>
		<div class="dtail">
			<span id="memeDetailContents">${meme.memeContents}</span>
			<br>
			<c:if test="${not empty memeFile.memeFileRename }">
				<br>
				<span> <img
					src="/resources/memeUploadFiles/${memeFile.memeFileRename }">
				</span>
			</c:if>
		</div>
		<br>
		<div class="dtail" id="memeDetailmemberNickname">
			<span>등재요청자 &nbsp;&nbsp; : &nbsp;&nbsp; ${meme.memberNickname}</span>
		</div>
		<br>
 	</div> 
	<div>
		<br>
		<hr>
		<!-- 로그인한 회원만 의견내기 a태그가 보여짐-->
		<div align="right">
			<c:if test="${not empty sessionScope.loginMember }">
				<a href="/meme/requestView?memeName=${meme.memeName}&memeNo=${meme.memeNo}"> 의견내기 &nbsp;&nbsp;</a>
			</c:if>
		</div>
		<br> <br>
	</div>
</body>
</html>