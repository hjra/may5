<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdvanceOrderPayment</title>
<script type="text/javascript">
/* checkbox 전체선택, 전체해제 */
$(document).ready(function(){
	$('#allAgreement').click(function(){
		if($("#allAgreement").is(":checked")){
			$('input:checkbox[id^=agreement]:not(checked)').attr("checked", true);
		} else{
			$('input:checkbox[id^=agreement]:checked').attr("checked", false);
		}
	});
});
</script>

<script>
		function div_OnOff(v, id) {
			// 라디오 버튼 value 값 조건 비교
			if (v == "1") {
				document.getElementById("ac").style.display = "none"; // 숨김
				document.getElementById("cp").style.display = "none"; // 숨김
				document.getElementById("cc").style.display = ""; // 보여줌
			} else if (v == "2") {
				document.getElementById("cc").style.display = "none"; // 숨김
				document.getElementById("cp").style.display = "none"; // 숨김
				document.getElementById("ac").style.display = ""; // 보여줌
			} else {
				document.getElementById("cc").style.display = "none"; // 숨김
				document.getElementById("ac").style.display = "none"; // 숨김
				document.getElementById("cp").style.display = ""; // 보여줌
			}
		}
		function div_OnOff2(v2, id) {
			if (v2 == "1") {
				document.getElementById("corcard").style.display = "none"; // 숨김
				document.getElementById("percard").style.display = ""; // 보여줌
			} else {
				document.getElementById("percard").style.display = "none"; // 숨김
				document.getElementById("corcard").style.display = ""; // 보여줌
			}
		}
	</script>
	<!-- 스크립트 끝 -->

</head>
<body>
	<h1>결제정보</h1>
	<f:form method="post" action="">
	<fieldset>
	<legend>결제방법선택</legend>
	
	<!-- html 시작 -->
	일반결제 :
	<input type="radio" name="paykind" value="1" checked="checked"
		onclick="div_OnOff(this.value,'cc');"> 신용카드
	<input type="radio" name="paykind" value="2"
		onclick="div_OnOff(this.value,'ac');"> 계좌이체
	<input type="radio" name="paykind" value="3"
		onclick="div_OnOff(this.value,'cp');"> 휴대폰 소액결제

	<div id="cc" style="display: block">
		카드구분 : 
		<input type="radio" name="cardsection" value="1"
			checked="checked" onclick="div_OnOff2(this.value,'percard');">개인카드
		<input type="radio" name="cardsection" value="2"
			onclick="div_OnOff2(this.value,'corcard');">법인카드
		
		<div id="percard" style="display: block">카드종류 : 
			<select id="selectBox"  title="" >
  								<option value="">KB카드</option>
  								<option value="">BC카드</option>
  								<option value="">신한카드</option>
  								<option value="">현대카드</option>
  								<option value="">삼성카드</option>
  								<option value="">롯데카드</option>
  								<option value="">외환카드</option>
  								<option value="">NH카드</option>
  								<option value="">우리카드</option>
  								<option value="">수협카드</option>
  								<option value="">광주카드</option>
  								<option value="">제주카드</option>
  								<option value="">전북카드</option>
  								<option value="">저축은행</option>
  								<option value="">우체국체크</option>
  								<option value="">KDB산업은행</option>
  								<option value="">신협</option>
 			</select>
 			<br>할부기간 : 
 			<select id="selectBox"  title="" >
  								<option value="">일시불</option>
  								<option value="">1개월</option>
  								<option value="">2개월</option>
  								<option value="">3개월</option>
 			</select>
 			<br>주문자동의 : <input id="allAgreement" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
		
		<div id="corcard" style="display: none">카드종류 : 
			<select id="selectBox"  title="" >
  								<option value="">KB카드</option>
  								<option value="">BC카드</option>
  								<option value="">신한카드</option>
  								<option value="">현대카드</option>
  								<option value="">삼성카드</option>
  								<option value="">롯데카드</option>
  								<option value="">외환카드</option>
  								<option value="">NH카드</option>
  								<option value="">우리카드</option>
  								<option value="">수협카드</option>
  								<option value="">광주카드</option>
  								<option value="">제주카드</option>
  								<option value="">전북카드</option>
  								<option value="">저축은행</option>
  								<option value="">우체국체크</option>
  								<option value="">KDB산업은행</option>
  								<option value="">신협</option>
 			</select>
 			<br>할부기간 : 
 			<select id="selectBox"  title="" >
  								<option value="">일시불</option>
  								<option value="">1개월</option>
  								<option value="">2개월</option>
  								<option value="">3개월</option>
 			</select>
 			<br>주문자동의 : <input id="allAgreement" type="checkbox" >전체동의<br>
 							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
		</div>
	</div>
	<div id="ac" style="display: none">
		계좌이체 :
	</div>
	
	
	<div id="cp" style="display: none">
		휴대폰 소액결제
	</div>
	
	
	
	</div>

	<!-- html 끝 -->
	</fieldset>
	</f:form>

</body>
</html>
