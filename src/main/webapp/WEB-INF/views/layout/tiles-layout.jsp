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
		background-color: #f9f9f9;
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
		height : 120%;
		width: 100%;
		background-color: #f9f9f9;
	}
	#body {
		height:100%;
		width:60%;
		float:left;
	}
	#rankContainer {
		--background-color: red;
		position: fixed;
		height:30%;
		width:19%;
		float:left;
		top: 200px;
		left: 80%;
	}
	#rank {
		width:250px;
		top: 20px;
		right: 10%;
		position: absolute; 
	}

	#left {
		width:20%;
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
		</div>
	</div>
</body>
</html>