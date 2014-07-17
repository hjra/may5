<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	body{
	background:#f5f5f5;
	}
	#emailSubmit{
	background:#cb9f9a;
	color:#ffffff;
	border:none;
	}
	.emailBox {
		width:500px;
		margin:80px auto;
	}
	.emailBox input,.emailBox textarea {
		display:block;
		width:100%;
		height:40px;
		line-height:30px;
		padding:5px;
		border:1px solid #ddd;
		resize:none;
	}
	.emailBox textarea {
	height:120px;
	}
	.emailRow{
		margin-bottom:10px;
	}
</style>
<form action="/CShop/mailProc.do" method="POST">
	<div class="emailBox">
		<div class="emailRow">
			<input type="text" name="name" placeholder="이름"/>
		</div>
		<div class="emailRow">
			<input type="text" name="email" placeholder="연락받을 이메일 주소"/>
		</div>
		<div class="emailRow">
			<textarea name="description"></textarea>
		</div>
		<div class="emailRow">
			<input id="emailSubmit" type="submit"/>
		</div>
	</div>
</form>