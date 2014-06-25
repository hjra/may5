<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
ul.menu-list {
	list-style: none;
}

li {
	display: inline-block;
	zoom: 1;
	*display: inline;
}

a {
	display: block;
	width: 100px;
	height: 100px;
	border: 1px solid #ddd;
}
</style>
</head>
<body>
	<p>메뉴리스트입니다.</p>
	<ul class="menu-list">
		<!-- for each ( List <map> )
		<li><a href="menuInfo.do?itemId=${itemId}">${itemName}</a></li>
		 for each end-->
		 <li><label>1호 케익입니다.</label>
		<li><a href="menuInfo.do?itemId=s1sss&itemName=생크림딸기딸기딸기케익">생크림 딸기딸기딸기 케익</a></li>
		<li><a href="menuInfo.do?itemId=s2sss">초코크림 딸기딸기딸기 케익</a></li>
		<li><a href="menuInfo.do?itemId=s1ssb">생크림 딸기딸기 바나나 케익</a></li>


	</ul>
</body>
</html>

<!-- 	<table border="1px" bordercolor="grey"> -->
<!-- 		<tr> -->
<!-- 			<td>1호케익</td> -->
<!-- 			<td><input type="button" value="생크림 딸기 딸기 딸기" id="s1sss"  name="s1sss" onclick="location.href='menuInfo.do'"></td> -->
<!-- 			<td>초코크림 딸기 딸기 딸기</td> -->
<!-- 			<td>생크림 딸기 딸기 바나나</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td>초코크림 딸기 딸기 바나나</td> -->
<!-- 			<td>생크림 딸기 딸기 포도</td> -->
<!-- 			<td>초코크림 딸기 딸기 포도</td> -->
<!-- 			<td>생크림 딸기 바나나 바나나</td> -->
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td>초코크림 딸기 바나나 바나나</td> -->
<!-- 			<td>생크림 딸기 바나나 포도</td> -->
<!-- 			<td>초코크림 딸기 바나나 포도</td> -->
<!-- 			<td>생크림 딸기 포도 포도</td> -->
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td>초코크림 딸기 포도 포도</td> -->
<!-- 		</tr> -->
<!-- 	</table> -->