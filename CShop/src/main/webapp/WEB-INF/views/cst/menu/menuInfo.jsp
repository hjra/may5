<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
	<link href="/controller/resources/css/web.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="/controller/resources/js/web.js"></script>
<title>메뉴 상세 정보</title>
</head>
<body>
	<label>
	아이템 아이디<input id="itemId" name="itemId" value="${itemList[ind].itemId}">	
	</label>
	<br>
	<label>
		아이템 이름 <input value="${itemList[ind].itemName}">	</label>
		<br>	
	<label>
			아이템  가격 <input value="${itemList[ind].itemCalorie *100}">
	</label>
	<br>
	<label>
	아이템 인포 <input value="${itemList[ind].itemInfo }">
	</label>
	<br>
	<br>
	
무슨 메뉴 일까요
이미지, 이름, 가격, 칼로리, 상세정보, 썸네일이미지, 평점 및 댓글
</body>

</html>
