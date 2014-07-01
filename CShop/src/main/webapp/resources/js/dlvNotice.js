$(function(){
	$(window).scroll(function() {
		if ($(window).scrollTop() > 100 ) {
			$('.cshopmain').addClass('sa');
		} else {
			$('.cshopmain').removeClass('sa');
		}
	});

	$('.mobile-toggle').click(function() {
		if ($('.cshopmain').hasClass('open-nav')) {
			$('.cshopmain').removeClass('open-nav');
		} else {
			$('.cshopmain').addClass('open-nav');
		}
	});

	$('.cshopmain li a').click(function() {
		if ($('.cshopmain').hasClass('open-nav')){
			$('.navigation').removeClass('open-nav');
			$('.cshopmain').removeClass('open-nav');
		}
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
});

window.viewChange = function(targetFrame,href){
	$(targetFrame).load(href);
	}