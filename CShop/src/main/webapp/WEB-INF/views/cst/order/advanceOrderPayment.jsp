<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
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
</head>
<body>
<h1>결제정보</h1>
<p><strong>*</strong>는 필수입력 항목입니다</p>
<f:form action="" method="post">
	<fieldset>
		<legend>결제방법선택</legend>
			<table border="1" summary="결제에 관련된 정보 입력">
				<caption>정보입력</caption>
				<colgroup>
					<col width="100px">
					<col width="250px">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="paykind"><strong>*</strong>일반결제</label></th>
						<td>
							<input type="radio" value="cc" name="receive" required="required"/>신용카드<br>
							<input type="radio" value="ac" name="receive" required="required"/>계좌이체<br>
							<input type="radio" value="cp" name="receive" required="required"/>휴대폰 소액결제
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cardsection"><strong>*</strong>카드구분</label></th>
						<td>
							<input type="radio" value="percard" name="receive1" required="required"/>개인카드<br>
							<input type="radio" value="corcard" name="receive1" required="required"/>법인카드
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cardkind"><strong>*</strong>카드종류</label></th>
						<td>
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
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="installment"><strong>*</strong>할부기간</label></th>
						<td>
							<select id="selectBox"  title="" >
  								<option value="">일시불</option>
  								<option value="">1개월</option>
  								<option value="">2개월</option>
  								<option value="">3개월</option>
 							</select>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="orderagreement"><strong>*</strong>주문자동의</label><br>
						<input id="allAgreement" type="checkbox" >전체동의
						</th>
						<td>
							<input name="serviceAgreement" type="checkbox" id="agreement">결제정보 수집 및 제공 동의하기<br>
							<input name="privacyAgreement" type="checkbox" id="agreement">개인정보 제3자 제공 동의하기<br>
							<input name="payAgreement" type="checkbox" id="agreement">위 상품의 판매정보를 명확히 확인하였으며 구매진행에 동의합니다
						</td>
					</tr>
				</tbody>
			</table>
			<p>
				<input type="reset" value="재입력"/>
				<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
				<input type="submit" value="다음"/></p>
	</fieldset>
</f:form>
</body>
</html>
