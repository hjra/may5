<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
메뉴리스트입니다.

<form action="menuInfo.do?itemId=" name="menuListtoInfo">
<table border="1px" bordercolor="grey">
<tr>
<td>1호케익</td>
<td><input type="button" value="생크림 딸기 딸기 딸기" onclick="location.href='/controller/cst/menu/menuInfo.do'"></td>
<td>초코크림 딸기 딸기 딸기</td>
<td>생크림 딸기 딸기 바나나</td>
</tr>
<tr>
<td>초코크림 딸기 딸기 바나나</td>
<td>생크림 딸기 딸기 포도</td>
<td>초코크림 딸기 딸기 포도</td>
<td>생크림 딸기 바나나 바나나</td>
</tr>

<tr>
<td>초코크림 딸기 바나나 바나나</td>
<td>생크림 딸기 바나나 포도</td>
<td>초코크림 딸기 바나나 포도</td>
<td>생크림 딸기 포도 포도</td>
</tr>

<tr>
<td>초코크림 딸기 포도 포도</td>
</table>
</form>


</body>
</html>