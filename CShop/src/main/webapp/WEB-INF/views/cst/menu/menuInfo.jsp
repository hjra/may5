<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
	
<label>평점 및 댓글</label>
<select name="evaluation">
	<option value="5">5</option>
	<option value="4">4</option>
	<option value="3">3</option>
	<option value="2">2</option>
	<option value="1">1</option>
</select>
이미지, 이름, 가격, 칼로리, 상세정보, 썸네일이미지, 평점 및 댓글

