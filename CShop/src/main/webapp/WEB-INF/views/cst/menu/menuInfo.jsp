<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 상세 정보</title>
</head>
<body>
	<label>
		아이템 아이디 <input value="${item.itemId }">
	</label>
	<br>
	<label>
		아이템 이름 <input value="${item.itemName }">
	</label>
	<br>
	<label>
	아이템  :
	<br>${item}
	</label>
	<br>
	<label>
	아이템 인포 :
	<br>${item.itemInfo}
	</label>
	<br>
	<br>
	
무슨 메뉴 일까요
이미지, 이름, 가격, 칼로리, 상세정보, 썸네일이미지, 평점 및 댓글
</body>
</html>