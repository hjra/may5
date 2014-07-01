<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="ha">
		<h1><span>Hi ha</span><br>navigation</h1>
		<div class="mouse">
			<span></span>   
		</div>
	</div>
	<div class="chome content">
		<div class="home">
			<h1>HOME</h1>
			<a href="/controller/cst/membership/termsForm.do">JOIN ${count}</a>
			<a href="/controller/cst/membership/myPage.do">MY C#</a>
			<a href="/controller/cst/membership/calendar.do">CALENDAR</a>
		</div>
		<div class="menu">
			<h1>MENU</h1>
			<a href="/controller/cst/menu/menuList.do">MENU</a>
		</div>
		<div class="order">
			<h1>ORDER</h1>
			<a href="../order/advanceOrder.do">ORDER</a>
		
		</div>
		<div class="about">
			<h1>ABOUT</h1>
		
		</div>
	</div>
	
	
<script>
//fixed main layout
$(function(){
	$("main").css({"padding-left":0,"padding-right":0});
});
</script>