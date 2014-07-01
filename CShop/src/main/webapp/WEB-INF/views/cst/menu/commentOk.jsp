<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

commentOk입니다.
<br>
코멘트가 등록되었습니다.
<br>
${evaluationList }



<br>
<br>
<label> 아이템 아이디 : ${itemId} </label>
<%-- <br>
<label> 아이템 이름 : ${itemName} </label>
<br>
<label> 아이템 가격 : ${itemPrice} </label> --%>
<br>
<label> 평점 : ${grade }</label>
<br>
<label> 코멘트 : ${evaluationContents} </label>
<br>
<script type="text/javascript">
	var d = new Date();
	document.write('현재 년: ' + d.getFullYear() + '<br />');
	document.write('현재 월: ' + (d.getMonth() + 1) + '<br />');
	document.write('현재 일: ' + d.getDate() + '<br />');
</script>

<a href="menuInfo.do">메뉴인포</a>
