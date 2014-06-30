<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/controller/resources/css/orderDetail.css" rel="stylesheet">
<title>AdvanceOrderPayment</title>
</head>
<body>
<h1>회원수취정보</h1>
<p><strong>*</strong>는 필수입력 항목입니다</p>
<f:form action="../order/advanceOrderPayment.do" method="post">
	<fieldset>
		<legend>정보입력</legend>
			<table class="b" border="1"  summary="수취에 관련된 정보입력">
				<caption>수취인 정보 입력</caption>
				<colgroup>
					<col width="100px">
					<col width="250px">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="orinfoyn"><strong>*</strong>기존정보 사용여부</label></th>
						<td>
							<input type="radio" value="uy" name="receive" required="required"/>기존정보사용<br>
							<input type="radio" value="un" name="receive" required="required"/>새로입력
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="name"><strong>*</strong>이름</label></th>
						<td>
							<input type="text" id="name" placeholder="ex)홍명보" required="required"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="pnumber">전화번호</label></th>
						<td>
							<input type="tel" id="pnumber" placeholder="ex)0212345678" required="required"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cpnumber"><strong>*</strong>휴대전화번호</label></th>
						<td>
							<input type="tel" id="cpnumber" placeholder="ex)01098765432" required="required"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="email">이메일</label></th>
						<td>
							<input type="email" id="email" placeholder="ex)id@domain.com"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="dlvinfoyn"><strong>*</strong>배송 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive1" required="required"/>배송(2500원)<br>
							<input type="radio" value="dn" name="receive1" required="required"/>직접수령
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="address"><strong>*</strong>주소</label></th>
						<td>
							<input type="text" id="address" required="required"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="dlvwarn">배송시 주의사항</label></th>
						<td>
							<input type="text" id="dlvwarn"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="askyn"><strong>*</strong>조르기 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive2" required="required"/>조르기<br>
							<input type="radio" value="dn" name="receive2" required="required"/>직접구매
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