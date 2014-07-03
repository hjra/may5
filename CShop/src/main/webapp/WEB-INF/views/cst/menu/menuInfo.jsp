<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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

<!-- <script type="text/javascript">
	$(document).ready(
			function() {
				$("#ok").click(
						function() {
							var x = f.grade.value;
							$.ajax({
								type : 'POST', //포스트방식
								url : 'menuAjax.do', //요청처리
								data : 'itemId=' + $('#itemId').val()
										+ '&grade=' + x
										+ '&evaluationContents='
										+ $('#evaluationContents').val()
										+'&index='+$('#index').val(), //파라미터
								dataType : 'xml', //처리한 요청을 받는 형식
								 error:function(request,status,error){
								        alert("code:"+request.status+"\n"+"\n"+"error:"+error);}
								      ,
								success : function(xml) { //성공시 해당함수 실행
									console.log('xml: ' + xml);
								var a = $(xml).find('check').Text;
								if (a.trim() == 'true'){
									alert("등록되었습니당!!!");
								}else{
									alert("등록안되었습니당!!!");
								}
								},
						});
				});
			});
 </script>
 -->


<form action="commentProc.do" method="post">

<!-- <form id="f" name="f">
 -->	<label> 아이템 아이디<input id="itemId" name="itemId"
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
	<table width="600" border="1" bordercolor="#777777">

		<tr align="center" valign="middle">
			<td colspan="5">평점 및 댓글</td>
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
			<td><input type="text" id="evaluationContents"
				name="evaluationContents" maxlength="300" style="width: 300px"
				placeholder="의견을 140자 이내로 적어주세요"></td>
			<td>회원아이디</td>
			<c:choose>
				<c:when test="${sessionScope.memberId == null }">
					<td width="100px" colspan="5" align="center"><input
						type="submit" id="ok" value="등록"> <!-- <a href="javascript:history.go(0)">[새로고침]</a> -->
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5" align="right"><a href="menuInfoComment.do"
							class="classname">의견등로옥</a></td>
					</tr>
				</c:otherwise>
			</c:choose>
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
				<td align="center"><fmt:formatDate
						value="${board.evaluationDate }" pattern="yyyy-MM-dd" /></td>
			</tr>

		</c:forEach>

		<tr>
			<td colspan="5" align="center"><c:if test="${page <= 1 }">[이전]&nbsp; </c:if>
				<c:if test="${page > 1 }">
					<a href="menuInfo.do?itemId=${itemId }&page=${page-1}">이전</a>&nbsp;</c:if> <c:forEach
					begin="${startpage }" end="${endpage }" var="a">
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
