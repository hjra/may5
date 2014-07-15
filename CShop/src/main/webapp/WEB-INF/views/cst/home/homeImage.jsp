<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
<header>
	<nav>
		<div class="chome content">

			<div class="home">

				<div class="m">
					<div>THE FRUIT CAKE STORE</div>
					<div>CONBINATION OF FRUIT CAKE</div>
					<div class="ma">MADE IN KOREAN - BIT C# PROJECT</div>
					<div id="aaa"><a href=".menu">
						<div class="icons"></div>
						<div class="homemenu"></div></a>
					</div>
				</div>

			</div>
		</div>
		<div class="menu">
			<div class="menua">
				<a href="menuList.do">MENU</a>
			</div>
		</div>
		<div class="order">
			<div class="ordera">
				<a href="advanceOrder.do">ORDER</a>
			</div>
			<div class="orderb">
				<a href="orderList.do">ORDERSEARCH</a>
			</div>


		</div>
		<div class="about">
			<div class="abouta">ABOUT</div>

		</div>
	</nav>
</header>

<script>
	//fixed main layout
	$(function() {
		$("main").css({
			"padding-left" : 0,
			"padding-right" : 0
		});
	});
	
	$('nav a').click(function(event) {
		  var id = $(this).attr("href");
		  var offset = 70;
		  var target = $(id).offset().top - offset;
		  $('html, body').animate({
		    scrollTop: target
		  }, 500);
		  event.preventDefault();
		});


</script>
