<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdvanceOrderPayment</title>
</head>
<body>
<h1>수취정보</h1>
<f:form action="" method="post">
	<fieldset>
		<legend>정보입력/</legend>
			<table border="1"  summary="수취에 관련된 정보입력">
				<caption>수취인 정보 입력</caption>
				<colgroup>
					<col width="200px">
					<col width="400px">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="orinfoyn">기존정보 사용여부</label></th>
						<td>
							<input type="radio" value="uy" name="receive"/>기존정보사용
							<input type="radio" value="un" name="receive"/>새로입력
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="name">이름</label></th>
						<td>
							<input type="text" size="20" maxlength="15"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="pnumber">전화번호</label></th>
						<td>
							<input type="text" size="20" maxlength="15"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cpnumber">휴대전화번호</label></th>
						<td>
							<input type="text" size="20" maxlength="15"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="email">이메일</label></th>
						<td>
							<input type="text" size="100" maxlength="80"/>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="dlvinfoyn">배송 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive1"/>배송(2500원)
							<input type="radio" value="dn" name="receive1"/>직접수령
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="address">주소</label></th>
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
						<th scope="row"><label for="askyn">조르기 여부</label></th>
						<td>
							<input type="radio" value="dy" name="receive2"/>조르기
							<input type="radio" value="dn" name="receive2"/>직접구매
						</td>
					</tr>
				</tbody>
			</table>
			<p><input type="reset" value="취소"/><input type="submit" value="다음"/></p>
	</fieldset>
</f:form>
</body>
</html>