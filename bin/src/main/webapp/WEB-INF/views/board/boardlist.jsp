<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	th {
		background-color: #eeeeee;
	}
	td {
		background-color: white;
	}
	a:link { color:black; text-decoration:none}
	a:visited { color:black; text-decoration:none}
	a:hover { color:black; text-decoration:none}
	a:active { color:black; text-decoration:none}
	a{
		font-size:20px;
	}
</style>

</head>

<body>
	<h1 align="center">게시판</h1>
	<p align="right">
		<input type="button" value="글쓰기"/>
	</p>
	<table align="center" border="1" style="text-align: center">
<!-- 		<tr> -->
<!-- 			<td colspan=5 align="right"></td> -->
<!-- 		</tr> -->
		<tr>
			<th>분류</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>작성날짜</th>
			<th>조회수</th>
		</tr>
		<tr>
			<td>자유</td>
			<td width="400px"><a href="#">제목1</td>
			<td>a</td>
			<td>22.01.25 00:01:00</td>
			<td>1</td>
		</tr>
		<tr>
			<td>추진</td>
			<td width="400px"><a href="#">제목2</a></td>
			<td>b</td>
			<td>22.01.25 00:01:01</td>
			<td>2</td>
		</tr>
		<tr>
			<td>자유</td>
			<td width="400px"><a href="#">제목3</a></td>
			<td>c</td>
			<td>22.01.25 00:01:02</td>
			<td>3</td>
		</tr>
		<tr>
			<td>추진</td>
			<td width="400px"><a href="#">제목4</a></td>
			<td>d</td>
			<td>22.01.25 00:01:03</td>
			<td>4</td>
		</tr>
		<tr>
			<td>자유</td>
			<td width="400px"><a href="#">제목5</a></td>
			<td>e</td>
			<td>22.01.25 00:01:04</td>
			<td>5</td>
		</tr>
	</table>
	<br>
	<br>
	
	<div>
	<div style="text-align:center">
	<button style="height:25px; width:55px"  >이전</button>
	<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
	<button style="height:25px; width:55px"  >다음</button>
	</div>
	</div>
	<br>
	<div class="search_wrap">
		<div class="search_area" style="text-align:center">
			<select class="form-control" name="searchField" style="height:30px; width:80px">
				<option value="0" style="text-align: center">분류</option>
				<option value="F" style="text-align: center">자유</option>
				<option value="P" style="text-align: center">추진</option>
				<option value="title" style="text-align: center">글제목</option>
				<option value="writer" style="text-align: center">작성자</option>
				<input type="text" name="keyword" style="height:24px; width:250px">
				<button style="height:30px; width:100px">Search</button>
			</select>
			
		</div>
	</div>
</body>
</html>