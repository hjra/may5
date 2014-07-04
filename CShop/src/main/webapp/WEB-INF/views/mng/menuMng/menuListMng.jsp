<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
상품관리 페이지

<script>
	$(document)
	.on("click","#deleteItemForSelected",function(){
		if(confirm("삭제하시겠습니까?")){
			$("#deleteForm").submit();
		}
	})
	.on("click","#insertNewItem",function(){
		location.href="menuModifyMng.do";
	});
</script>

<div class="row-fluid text-right">
	<button id="deleteItemForSelected" class="btn btn-primary">선택삭제</button>
	<button id="insertNewItem" class="btn btn-primary">상품등록</button>
</div>

<div class="clearfix"></div>

<div class="row-fluid">
	<form id="deleteForm" method="post" action="menuItemDelete.do">
		<ul class="menu-list">
		<li class="cake title">
			<label>1호 케익입니다.</label>
		</li>
			<c:forEach var="item" items="${itemList}" varStatus="status">
				<li class="cake">
					${status.index }
					<a href="menuInfoMng.do?itemId=${item.itemId}">임시링크</a>
					<footer>
						<label>
							<input type="checkbox" name="deleteItem" value="${item.itemId }" /> 
							<span>${item.itemName}</span>
						</label>
					</footer>	
		 		</li>
			</c:forEach>
		</ul>
	</form>
</div>	
