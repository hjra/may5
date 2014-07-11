<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/CShop/resources/css/orderDetail.css" rel="stylesheet">

<h1>회원수취정보</h1>
<p><strong>*</strong>는 필수입력 항목입니다</p>
<f:form action="advanceOrderPayment.do" method="post">
	<div class="od">
		<div class="odName">
		<c:choose>
			<c:when test="${sessionScope.cstLogin.cstId == null }">
				<ul>
					<li><label for="name"><strong>*</strong>이름</label></li>
					<li><input type="text" id="name" placeholder="ex)홍명보" required="required" /></li>
				</ul>
			</c:when>
			<c:otherwise>
				<ul>
					<li><label for="orinfoyn"><strong>*</strong>기존정보 사용여부</label></li>
					<li><input type="radio" value="uy" name="receive" required="required"  checked="checked" 
								onclick="location.href='cstExistingInfo.do?cstId=${sessionScope.cstLogin.cstId}'"/>기존정보사용<br>
							<input type="radio" value="un" name="receive" required="required" />새로입력</li>
				</ul>
				<ul>
					<li><label for="name"><strong>*</strong>이름</label></li>
					<li><input type="text" id="name" placeholder="ex)홍명보" required="required" /></li>
				</ul>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
	<div class="od">
		<div class="odCp">
			<ul>
				<li><label for="cpnumber"><strong>*</strong>휴대전화번호</label></li>
				<li><input type="tel" id="cpnumber" placeholder="ex)01098765432" required="required" value="${cstExistingInfo.cstCP}"/></li>
			</ul>
		</div>
	</div>
	<div class="od">
		<div class="odEmail">
			<ul>
				<li><label for="email">이메일</label></li>
				<li><input type="email" id="email" placeholder="ex)id@domain.com" value="${cstExistingInfo.cstEmail}"/></li>
			</ul>
		</div>
	</div>
	<div class="od">
		<div class="odAddress">
		<c:choose>
			<c:when test="${sessionScope.cstLogin.cstId == null }">
				<div id="zipCodeDiv"></div>
					<input type="text" id="scZipText" placeholder="ADDRESS" value="" class="row_text"
							onkeydown="if (event.keyCode == 13) document.getElementById('scZipBtn').click()">
					<input type="button" id="scZipBtn" value="SEARCH">
				<div id="scZipCheck"></div>
				<div id="zipInfoDiv" style="width: 100%; height: 100px; overflow: auto; display: none;">
					<table id="zipInfoTable"></table>
				</div>
			</c:when>
			<c:otherwise>
				<ul>
					<li><label for="address"><strong>*</strong>주소</label></li>
					<li><input type="text" style="width: 500px" id="address" required="required" 
								value="${cstExistingInfo.sido } ${cstExistingInfo.sigungu } ${cstExistingInfo.dongubmyon } 
									${cstExistingInfo.dong } ${cstExistingInfo.li } ${cstExistingInfo.doromyong } 
									${cstExistingInfo.buildingNum1 }-${cstExistingInfo.buildingNum2 } ${cstExistingInfo.sigunguBuildingName } 
									${cstExistingInfo.cstDetailAddress }"/></li>
				</ul>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
	<div class="od">
		<div class="odDetailAddress">
			<ul>
				<li><label for="detailAddress"><strong>*</strong>상세주소</label></li>
				<li><f:input path="cstDetailAddress" placeholder="ADDRESS DETAIL" /></li>
			</ul>
		</div>
	</div>
	<div class="od">
		<div class="odDlvInfoYn">
			<ul>
				<li><label for="dlvinfoyn"><strong>*</strong>배송 여부</label></li>
				<li><input type="radio" value="dy" name="receive1" required="required"/>배송(2500원)<br>
							<input type="radio" value="dn" name="receive1" required="required"/>직접수령</li>
			</ul>
		</div>
	</div>
	<div class="od">
		<div class="odDlvWarn">
			<ul>
				<li><label for="dlvwarn">배송시 주의사항</label></li>
				<li><input type="text" id="dlvwarn"/></li>
			</ul>
		</div>
	</div>
	<div class="od">
		<div class="odAskYn">
			<ul>
				<li><label for="askyn"><strong>*</strong>조르기 여부</label></li>
				<li><input type="radio" value="dy" name="receive2" required="required"/>조르기<br>
							<input type="radio" value="dn" name="receive2" required="required"/>직접구매</li>
			</ul>
		</div>
	</div>
	<p>
				<input type="reset" value="재입력"/>
				<input type="button" onclick="javascript:history.back(-1)" value="이전"/>
				<input type="submit" value="다음"/>
	</p>
	
</f:form>

<script src="resources/script/advanceOrder.js"></script>
<script type="text/javascript"></script>