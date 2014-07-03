<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>


<style type="text/css">
.classname {
	-moz-box-shadow: inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow: inset 0px 1px 0px 0px #ffffff;
	box-shadow: inset 0px 1px 0px 0px #ffffff;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed
		), color-stop(1, #dfdfdf));
	background: -moz-linear-gradient(center top, #ededed 5%, #dfdfdf 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed',
		endColorstr='#dfdfdf');
	background-color: #ededed;
	-webkit-border-top-left-radius: 6px;
	-moz-border-radius-topleft: 6px;
	border-top-left-radius: 6px;
	-webkit-border-top-right-radius: 6px;
	-moz-border-radius-topright: 6px;
	border-top-right-radius: 6px;
	-webkit-border-bottom-right-radius: 6px;
	-moz-border-radius-bottomright: 6px;
	border-bottom-right-radius: 6px;
	-webkit-border-bottom-left-radius: 6px;
	-moz-border-radius-bottomleft: 6px;
	border-bottom-left-radius: 6px;
	text-indent: 0;
	border: 1px solid #b061b0;
	display: inline-block;
	color: #777777;
	font-family: arial;
	font-size: 15px;
	font-weight: bold;
	font-style: normal;
	height: 20px;
	line-height: 20px;
	width: 80px;
	text-decoration: none;
	text-align: center;
	text-shadow: 1px 1px 0px #ffffff;
}

.classname:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dfdfdf
		), color-stop(1, #ededed));
	background: -moz-linear-gradient(center top, #dfdfdf 5%, #ededed 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf',
		endColorstr='#ededed');
	background-color: #dfdfdf;
}

.classname:active {
	position: relative;
	top: 1px;
}
</style>

<!-- html 시작 -->
<input type="radio" name="test" value="1" onclick="div_OnOff(this.value,'con');"> 회원신청 
<input type="radio" name="test" value="2" onclick="div_OnOff(this.value,'con');"> 준회원 
<input type="radio" name="test" value="3" onclick="div_OnOff(this.value,'con');"> 정회원

<div id="con1" style="display:none">
 회원신청
</div>

<div id="con2" style="display:none">
 준회원
</div>

<div id="con3" style="display:none">
 정회원
</div>
<!-- html 끝 -->

<!-- 스크립트 시작 -->
<script>
function div_OnOff(v,id){
 // 라디오 버튼 value 값 조건 비교
 if(v == "3"){
	 document.getElementById("con2").style.display = "none"; // 숨김
	 document.getElementById("con1").style.display = "none"; // 숨김
	  document.getElementById("con3").style.display = ""; // 보여줌

 }else if(v == "2"){
	 document.getElementById("con3").style.display = "none"; // 숨김
	 document.getElementById("con1").style.display = "none"; // 숨김
	  document.getElementById("con2").style.display = ""; // 보여줌
 }else{
	 document.getElementById("con3").style.display = "none"; // 숨김
	 document.getElementById("con2").style.display = "none"; // 숨김
	  document.getElementById("con1").style.display = ""; // 보여줌
 }
}
</script>
<!-- 스크립트 끝 -->


<form action="commentProc.do" method="post">
<label> 아이템 아이디<input id="itemId" name="itemId"
		value="${anItem.itemId}">
	</label> <br> <label> 아이템 이름 <input name="itemName"
		value="${anItem.itemName}">
	</label> <br> <label> 아이템 가격 <input name="itemPrice"
		value="${anItem.price}">
	</label> <br> <label> 아이템 인포 <input name="itemInfo"
		value="${anItem.itemInfo }">
	</label> <br> <label> 언아이템!!! <input name="index" id="index"
		value="${ind}">
	</label> <br> <br>
<br>
ind::${ind}<br>
index::${index}
	<%-- ${evaluationList } 이미지, 이름, 가격, 칼로리, 상세정보, 썸네일이미지, 평점 및 댓글 --%>

	<%
		int i = 0;
	%>
	<table border="1" bordercolor="#777777">

		<tr align="center" valign="middle">
			<td colspan="6">평점 및 댓글</td>
		</tr>

		<tr align="center" valign="middle" bgcolor="#f5ccf5">
			<td width="66px">번호</td>
			<td width="100px"><label>평점</label> 
				<select name="grade" id="grade">
					<option value="5">★★★★★</option>
					<option value="4">★★★★☆</option>
					<option value="3">★★★☆☆</option>
					<option value="2">★★☆☆☆</option>
					<option value="1">★☆☆☆☆</option>
				</select></td>
			<td><input type="text" id="evaluationContents" name="evaluationContents" maxlength="300" style="width: 300px"
				placeholder="의견을 140자 이내로 적어주세요"></td>
			<td>회원아이디</td>
			<%-- <c:choose>
				<c:when test="${sessionScope.memberId == null }">
					<td width="100px" colspan="5" align="center">
					<input type="submit" id="ok" value="등록"></td>
				</c:when>
				<c:otherwise>
						<td>
						<a href="loginProc.do" class="classname">의견등록하려면 로그인 먼저</a></td>
				</c:otherwise>
			</c:choose> --%>
			<td align="center">
					<input type="submit" id="ok" value="등록"></td>
			<td>삭제</td>
		</tr>

		<c:forEach var="board" items="${evaluationList}">
			<%
				i++;
			%>
			<tr height="35px">
				<td align="center">${board.evaluationIndex}</td>
				<td align="center"><c:choose>
						<c:when test="${board.grade ==5}">
						★★★★★
			</c:when>
						<c:when test="${board.grade ==4}">
						★★★★☆
			</c:when>
						<c:when test="${board.grade ==3}">
						★★★☆☆
			</c:when>
						<c:when test="${board.grade ==2}">
						★★☆☆☆
			</c:when>
						<c:when test="${board.grade ==1}">
						★☆☆☆☆
			</c:when>
					</c:choose></td>
				<td>${board.evaluationContents }</td>
				<td></td>
				
				<td align="center">
				<fmt:formatDate value="${board.evaluationDate }" pattern="yyyy-MM-dd" />
				<td>
				<a href="evaluationDelete.do?evaluationIndex=${board.evaluationIndex}&itemId=${anItem.itemId}">삭제</a>
				</td>
			</tr>

		</c:forEach>

		<tr>
			<td colspan="6" align="center"><c:if test="${page <= 1 }">[이전]&nbsp; </c:if>
				<c:if test="${page > 1 }">
					<a href="menuInfo.do?itemId=${itemId }&page=${page-1}">이전</a>&nbsp;</c:if>
					 <c:forEach begin="${startpage }" end="${endpage }" var="a">
					<c:if test="${a==page }">[${a}]</c:if>
					<c:if test="${a!=page }">
						<a href="menuInfo.do?itemId=${itemId }&page=${a}">[${a}]</a>&nbsp;</c:if>
				</c:forEach> <c:if test="${page>=maxpage }">[다음]</c:if> <c:if
					test="${page<maxpage }">
					<a href="menuInfo.do?itemId=${itemId }&page=${page+1}">[다음]</a>
				</c:if></td>
		</tr>


	</table>

</form>
