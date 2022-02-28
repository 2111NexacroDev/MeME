<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$("#BoardDel").on("click", function() {
			location.href = "${path}/board/AdBoardDel.jsp";
		});
	});
</script>
<style>
table {
	width: 100%;
	height: 100px;
	background-color: #eeeeee;
	text-align: center;
}

a:link {
	color: black;
	text-decoration: none
}

a:visited {
	color: black;
	text-decoration: none
}

a:hover {
	color: black;
	text-decoration: none
}

a:active {
	color: black;
	text-decoration: none
}

a {
	font-size: 20px;
}
#nav {
	width: 100%;
	float: left;
	margin: 0 0 1em 0;
	padding: 0;
	background-color: #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc; }
#nav ul {
	list-style: none;
	width: 100%;
	margin: 0 auto;
	padding: 0; }
#nav li {
	float: left;
	width: 25%;
	text-align: center;
}
#nav li a {
	display: block;
	padding: 8px 15px;
	text-decoration: none;
	font-weight: bold;
	background-color: #ccc;
	border-right: 1px solid #ccc; }
#nav li a:hover {
	background-color: gray; }

#subnav {
	width: 100%;
	float: left;
	margin: 0 0 1em 0;
	padding: 0; }
#subnav ul {
	list-style: none;
	width: 100%;
	margin: 0 auto;
	padding: 0; }
#subnav li {
	float: left;
	width: 20%;
	text-align: center;
}
#subnav li a {
	display: block;
	padding: 8px 15px;
	text-decoration: none;
    font-size: 15px;
	font-weight: bold; }
#subnav li a:hover {
	background-color: gray; }

</style>

</head>

<body>
	<div id="wrap">	
		 <div id="nav">
			 <ul>
				 <li><a href="#">회원 관리</a></li>
				 <li><a href="#">유행어 사전 관리</a></li>
				 <li><a href="#">추진/자유게시판 관리</a></li>
				 <li><a href="#">퀴즈관리</a></li>
			 </ul>
		 </div>		
	 </div>
    <br>
    <div id="wrap">	
        <div id="subnav">
            <ul>
                <li><a href="#">전체 글 목록</a></li>
                <li><a href="#">신고된 글 목록</a></li>
            </ul>
        </div>		
    </div>
	<div style="text-align: center;">
	<table align="center" border="1" >
		<tr>
			<td>
				구분
			</td>
			<td>
				글번호
			</td>
			<td>
				글 제목
			</td>
			<td>
				작성자
			</td>
			<td>
				작성일
			</td>
			<td>
				신고수
			</td>
		</tr>
		<tr>
			<td>
				자유
			</td>
			<td>
				12
			</td>
			<td>
				대출해드립니다
			</td>
			<td>
				불법캐피탈
			</td>
			<td>
				2021.09.15
			</td>
			<td>
				15
			</td>
			<td style="width: 80px;">
			<input type="button" id="AdBoardDel" value="삭제" />
			</td>			
			
		</tr>
		<tr>
			<td>
				자유
			</td>
			<td>
				57
			</td>
			<td>
				@#%같네 @#들
			</td>
			<td>
				걸레문사나이
			</td>
			<td>
				2021.12.19
			</td>
			<td>
				32
			</td>
			<td>
				<input type="button" id="AdBoardDel" value="삭제" />
			</td>
		</tr>
		<tr>
			<td>
				추진
			</td>
			<td>
				124
			</td>
			<td>
				노잼
			</td>
			<td>
				뇌절신
			</td>
			<td>
				2022.01.04
			</td>
			<td>
				7
			</td>
			<td>
				<input type="button" id="AdBoardDel" value="삭제" />
			</td>
		</tr>		
	</table>
	<br>
	<input type="text" name="keyword" style="height:24px; width:250px;">
	<br><br>
	<button style="height:25px; width:55px"  >이전</button>
	<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
	<button style="height:25px; width:55px"  >다음</button>
</div>
</body>
</html>