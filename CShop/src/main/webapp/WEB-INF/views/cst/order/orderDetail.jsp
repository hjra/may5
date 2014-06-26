<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>주문상세페이지</h1>
<f:form action="" method="post">
	<fieldset>
		<legend>선물하기 - 옵션</legend>
			<table border="1" width="100%" summary="옵션정보입력">
				<caption>옵션 선택</caption>
				<colgroup>
					<col width="20%"/>
					<col width="80%"/>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="ca">CAKE수량</label></th>
						<td>
							<select>
								<option value="1">1개</option>
								<option value="2">2개</option>
								<option value="3">3개</option>
								<option value="4">4개</option>
								<option value="5">5개</option>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="fw">꽃다발추가</label></th>
						<td>
							<input type="radio" value="fy" name="receive2"/>꽃다발 추가
							<input type="radio" value="fn" name="receive2"/>선택안함
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cd">카드</label></th>
						<td>
							<input type="radio" value="coy" name="receive3"/>카드 추가
							<input type="radio" value="cqy" name="receive3"/>카드(QR)코드 추가
							<input type="radio" value="can" name="receive3"/>선택안함
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cm">카드문구</label></th>
						<td>
							<input type="text" size="20" maxlength="15">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="fu">동영상추가</label></th>
						<td>
							<input type="file" />
						</td>
					</tr>
				</tbody>
			</table>
			<p><input type="reset" value="취소"/><input type="submit" value="다음"/></p>
	</fieldset>
</f:form>
</body>
</html>