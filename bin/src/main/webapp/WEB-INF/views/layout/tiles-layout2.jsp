<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
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
		height:20%;
		width:100%;
		background-color: #8F2B00;
	}
	#content {
		height : 80%;
		width: 100%;
		background-color: #f9f9f9;
	}
	#body {
		margin-top: -10px
		height:100%;
		width:100%;
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
		<div id="content">
			<div id="body">
				<tiles:insertAttribute name="body" />
			</div>
			
			
		</div>
	</div>
</body>
</html>