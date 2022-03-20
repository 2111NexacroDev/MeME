<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유행어 사전 오류페이지</title>
<style>

/* 	.message {
	text-align : center;
	position : absolute;
	top : 45%;
	left : 30%;
	} */
.c-right {
	width: 25%;
	float: left;
}

.c-main {
	width: 50%;
	text-align: left;
	float: left;
}

.c-left {
	width: 25%;
	float: left;
}

.c-main .add {
	text-align: left;
}

#susggestionDetail {
	font-style: italic;
}
</style>
</head>
<body>
	<br>
	<div class="c-left">
		<br>
	</div>
	<div class="c-main">

		<div class="suggestion">
			<h4>
				<span>혹시, 이것을 찾으시나요?</span> &emsp;&emsp;
				<c:forEach items="${memeSuggestionList }" var="suggestionList">
					<a id="susggestionDetail"
						href="/meme/detail?memeName=${suggestionList.memeName}">${suggestionList.memeName}</a>
					&emsp;
				</c:forEach>
			</h4>
		</div>
		<br> <br>
		<div class="add">
			<h3>
				<span>${msg }</span>&emsp; <a href="/meme/registerView">
					>>등록하러가기 </a>
			</h3>
		</div>


	</div>
	<div class="c-right">
		<br>
	</div>
</body>
</html>

