<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdvanceOrderPayment</title>
</head>
<body>
<h1>수취정보</h1>
<p><strong>*</strong>는 필수입력 항목입니다</p>
<f:form action="../order/advanceOrderPayment.do" method="post">
	<fieldset>
		<legend>정보입력</legend>
			<table border="1"  summary="수취에 관련된 정보입력">
				<caption>수취인 정보 입력</caption>
				<colgroup>
					<col width="20%">
					<col width="150%">
				</colgroup>
				<tbody>
					<!-- <tr>
						<th scope="row"><label for="orinfoyn"><strong>*</strong>기존정보 사용여부</label></th>
						<td>
							<input type="radio" value="uy" name="receive"/>기존정보사용
							<input type="radio" value="un" name="receive"/>새로입력
						</td>
					</tr> -->
					<tr>
						<th scope="row"><label for="name"><strong>*</strong>이름</label></th>
						<td>
							<input type="text" id="name" placeholder="홍명보"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="pnumber">전화번호</label></th>
						<td>
							<input type="tel" id="pnumber" placeholder="0212345678"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cpnumber"><strong>*</strong>휴대전화번호</label></th>
						<td>
							<input type="tel" id="cpnumber" placeholder="01098765432"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="email">이메일</label></th>
						<td>
							<input type="email" id="email" placeholder="id@domain.com"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="dlvinfoyn"><strong>*</strong>배송 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive1"/>배송(2500원)
							<input type="radio" value="dn" name="receive1"/>직접수령
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="address"><strong>*</strong>주소</label></th>
						<td>
							<input type="text" size="100" maxlength="80"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="dlvwarn">배송시 주의사항</label></th>
						<td>
							<input type="text" size="100" maxlength="80"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="askyn"><strong>*</strong>조르기 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive2"/>조르기
							<input type="radio" value="dn" name="receive2"/>직접구매
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