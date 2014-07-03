<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=2">
	<link href="/controller/resources/css/web.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="/controller/resources/js/web.js"></script>
	<title>사전주문</title>
<body>
<h1>예약주문페이지</h1>
<p><strong>*</strong>는 필수입력 항목입니다</p>
<f:form action="orderDetail.do" method="post">
	<fieldset>
		<legend>선물하기 - 옵션</legend>
			<table border="1"  summary="옵션정보입력">
				<caption>옵션 선택</caption>
				<colgroup>
					<col style="width: 200px"/>
					<col style="width: 500px"/>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="ca"><strong>*</strong>케이크 수량</label></th>
						<td>
							<input type="number" min="1" max="10" step="1"  id="ca" required="required">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="fw"><strong>*</strong>꽃다발 추가</label></th>
						<td>
							<input type="radio" value="fy" name="receive2" required="required"/>꽃다발 추가<br>
							<input type="radio" value="fn" name="receive2" required="required"/>선택안함
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cd"><strong>*</strong>카드</label></th>
						<td>
							<input type="radio" value="coy" name="receive3" required="required"/>카드 추가<br>
							<input type="radio" value="cqy" name="receive3" required="required"/>카드(QR)코드 추가<br>
							<input type="radio" value="can" name="receive3" required="required"/>선택안함
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="cm">카드문구</label></th>
						<td>
							<input type="text" id="cm" placeholder="ex)생일축하합니다" />
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="fu">동영상 추가</label></th>
						<td>
							<input type="file" />
						</td>
					</tr>
				</tbody>
			</table>
			<p>
				<input type="reset" value="재입력"/>
				<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
				<input type="submit" value="다음"/>
			</p>
	</fieldset>
</f:form>
</body>
</html>