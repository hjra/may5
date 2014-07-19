<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<h1>결제결제결제</h1>

<div class="useroption">
<div class="useroptiona">
<div class="useroptionb">
<div class="optiona">ADVANCE ORDER</div>
			<div class="abn"></div>
			<div class="aba"></div>  
			<div class="abs">*는 필수입력 항목입니다</div>
			<div class="abc">결제정보</div>


<f:form action="paymentOk.do" method="post" commandName="orders">

<c:choose>
	<c:when test="${orders.payType == '신용카드'}">
	신용카드..
		<div class="">
			<span class=""><label for="">주문상품</label></span>
			<span><input type="text" name="" value=""></span>
		</div>
		<div class="">
			<span class=""><label for="">상품금액</label></span>
			<span><input type="text" name="" value=""></span>
		</div>
		<div class="">
			<span class=""><label for="">할부기간</label></span>
			<span>
				<select id="selectBox" name="installmentTerm" title="installment" >
 					<c:forEach var="term" items="${installment }">
 						<option value="${term.installmentTerm }">${term.installmentTerm }</option>
 					</c:forEach>
 				</select>
 			</span>
		</div>
		<div class="">
			<span class=""><label for="">ISP저장매체 선택</label></span>
			<span>
				<input type="radio" value="">PC
			</span>
			<span>
				<input type="radio" value="">휴대폰
			</span>
			<span>
				<input type="radio" value="">이동식 디스크
			</span>
			<span>
				<input type="radio" value="">IC카드
			</span>
		</div>
		<div class="">
			<span class=""><label for="">ISP비밀번호</label></span>
			<span><input type="password" name="" ></span>
		</div>
	</c:when>
	<c:when test="${orders.payType == '계좌이체'}">
	계좌이체..
		<div class="">
			<span class=""><label for="">주문상품</label></span>
			<span><input type="text" name="" value=""></span>
		</div>
		<div class="">
			<span class=""><label for="">상품금액</label></span>
			<span><input type="text" name="" value=""></span>
		</div>
		<div class="">
			<span class=""><label for="">계좌번호</label></span>
			<span><input type="text" name=""> ('-'없이)</span>
		</div>
		<div class="">
			<span class=""><label for="">계좌비밀번호</label></span>
			<span><input type="password" name=""> 4자리</span>
		</div>
		<div class="">
			<span class=""><label for="">주민번호</label></span>
			<span><input type="text" name=""> - <input type="text" name=""></span>
		</div>
	</c:when>
	<c:when test="${orders.payType == '휴대폰 소액결제'}">
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
			<span><input type="text" name=""> - <input type="text" name=""></span>
		</div>
		<div class="">
			<span class=""><label for="">결제알림이메일</label></span>
			<span><input type="email" name=""></span>
		</div>
	</c:when>
</c:choose>
	<p>
		<input type="reset" value="재입력"/>
		<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
		<input type="submit" value="다음"/>
	</p>
</f:form>
</div>
</div>
</div>


<script type="text/javascript"></script>
<script src="resources/script/advanceOrder.js"></script>