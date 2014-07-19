<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<h1>결제결제결제</h1>

<f:form action="" method="post">
<%-- <c:if test="${orders.cardCode == cardKind.cardCode }">${cardKind.cardName }</c:if> --%>
<c:forEach items="${cardKind }" var="cardKinds">
	${cardKinds.cardCode }
</c:forEach>
<br>
${cardKind}
<c:choose>
	<c:when test="${orders.payCode == 1}">
	신용카드..
		<div class="">
			<span class=""><label for="">ISP</label></span>
			<span><input type="text" name="" ></span>
		</div>
		
	</c:when>
	<c:when test="${orders.payCode == 2}">
	계좌이체..
		<div class="">
			<span class=""><label for="">계좌번호</label></span>
			<span><input type="text" name=""> ('-'없이)</span>
		</div>
		<div class="">
			<span class=""><label for="">계좌비밀번호</label></span>
			<span><input type="text" name=""> 4자리</span>
		</div>
		<div class="">
			<span class=""><label for="">주민번호</label></span>
			<span><input type="text" name=""> - <input type="text" name=""></span>
		</div>
	
	</c:when>
	<c:when test="${orders.payCode == 3}">
	휴대폰 소액결제
		<div class="">
			<span class=""><label for="">상품명</label></span>
			<span><input type="text" name=""></span>
		</div>
		<div class="">
			<span class=""><label for="">결제금액</label></span>
			<span><input type="text" name=""></span>
		</div>
		<div class="">
			<span class=""><label for="">결제일시</label></span>
			<span><input type="text" name=""></span>
		</div>
		<div class="">
			<span class=""><label for="">이동통신사</label></span>
			<span>
				<c:forEach var="telecoms" items="${telecoms }">
					<input type="radio" value="${telecoms.telecomCode }">${telecoms.telecomName }
				</c:forEach>
			</span>
		</div>
		<div class="">
			<span class=""><label for="">휴대폰번호</label></span>
			<span><input type="tel" name=""></span>
		</div>
		<div class="">
			<span class=""><label for="">주민번호</label></span>
			<span><input type="text" name=""></span>
		</div>
		<div class="">
			<span class=""><label for="">결제알림이메일</label></span>
			<span><input type="email" name=""></span>
		</div>
	</c:when>
</c:choose>

</f:form>


<script type="text/javascript"></script>
<script src="resources/script/advanceOrder.js"></script>