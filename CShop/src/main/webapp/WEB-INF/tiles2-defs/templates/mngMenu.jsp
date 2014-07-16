<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!--
	아무 element나 href를 달아주면 링크가 작동됩니다.
	href가 없을시 부모 element의 기본링크를 따라갑니다.
-->
<div id="gnb">
	<menu>
		<li>
			<div class="icon">
				<span class="glyphicon glyphicon-home"></span>
			</div>
			<div class="text">
				<dl>
					<dt href="mngLoginForm.do">첫번째</dt>
					<dd><a href="allMemberInfoForm.do">고객정보</a></dd>
					<dd><a href="vipListForm.do">VIP LIST</a></dd>
					<dd><a href="blackListForm.do">관심고객리스트</a></dd>
					<dd><a href="board.do">QnA관리</a></dd>
				</dl>
			</div>
		</li>
		<li>
			<div class="icon">
				<span class="glyphicon glyphicon-heart-empty"></span>
			</div>
			<div class="text">
				<dl>
					<dt>두번째</dt>
					<dd><a href="orderListMng.do">주문관리</a></dd>
					<dd><a href="dlvNotice.do">알리미</a></dd>
					<dd><a href="menuListMng.do">상품관리</a></dd>
					<dd><a href="menuStockMng.do">상품재고</a></dd>
				</dl>
			</div>
		</li>
		<li>
			<div class="icon">
				<span class="glyphicon glyphicon-user"></span>
			</div>
			<div class="text">
				<dl>
					<dt>세번째</dt>
					<dd><a href="managerInfo.do">직원정보</a></dd>
					<dd><a href="dailyReport.do">통계</a></dd>
				</dl>
			</div>
		</li>
		<li href="http://getbootstrap.com/components/">
			<div class="icon">
				<span class="glyphicon glyphicon-user"></span>
			</div>
			<div class="text">
				<dl>
					<dt>아이콘 참조</dt>
				</dl>
			</div>
		</li>
	</menu>
</div>
