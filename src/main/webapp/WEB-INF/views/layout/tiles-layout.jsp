<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<!-- 랭킹 포함 tiles -->
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
		background-color: #f9f9f9;
	}
	#header {
		height:100px;
		width:100%;
	}
	#title2 {
		height:100px;
		width:100%;
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
		width:60%;
		float:left;
	}
	#rankContainer {
		position: fixed;
		height:50%;
		width:20%;
		float:left;
		top: 200px;
		left: 70%;
	}
	#rank {
		width:250px;
		top: 20px;
		position: absolute; 
	}

	#left, #right {
		width:10%;
		height:100%;
		float:left;
	}

</style>
</head>
<body>	
	<div id= "container">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div id="title2">
			<jsp:include page="title.jsp"></jsp:include>
		</div>
		<div id="content">
			<div id="left">
			</div>
			<div id="body">
				<tiles:insertAttribute name="body" />
			</div>
			<div id="rankContainer">
				<div id="rank">
					<jsp:include page="rank.jsp"></jsp:include>
				</div>
			</div>
			<div id="right">
			</div>
		</div>
	</div>
</body>
</html>