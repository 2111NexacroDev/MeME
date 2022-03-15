<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<!-- 랭킹 제외 tiles -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<style>
	html, body {
		height: 100%;
		width: 100%;
		background-color: black;
	}
	#container {
		height:100%;
		width:100%;
		background-color: grey;
	}
	#header {
		height:100px;
		width:100%;
		background-color: #f9f9f9;
	}
	#title {
		height:100px;
		width:100%;
		background-color: #FF0000;
		text-align: center;
		margin: auto;
	}
	#content {
		height : 100%;
		width: 100%;
		background-color: #f9f9f9;
	}
	#body {
		height:100%;
		width:80%;
		background-color: #f9f9f9;
		float:left;
	}
	#left, #right {
		width:10%;
		height:100%;
		background-color: #f9f9f9;
		float:left;
	}
</style>
</head>
<body>	

	<div id= "container">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div id="title">
			<jsp:include page="title.jsp"></jsp:include>
		</div>
		<div id="content">
			<div id="left">
			</div>
			<div id="body">
				<tiles:insertAttribute name="body" />
			</div>
			<div id="left">
			</div>
			
		</div>
	</div>
</body>
</html>