$(document).ready(function(){
	$('#allAgreement').click(function(){
		if($("#allAgreement").is(":checked")){
			$('input:checkbox[id^=agreement]:not(checked)').prop("checked", true);
		} else{
			$('input:checkbox[id^=agreement]:checked').prop("checked", false);
		}
	});
	
	$('#allAgreement1').click(function(){
		if($("#allAgreement1").is(":checked")){
			$('input:checkbox[id^=agreement1]:not(checked)').prop("checked", true);
		} else{
			$('input:checkbox[id^=agreement1]:checked').prop("checked", false);
		}
	});
	
	$('#allAgreement2').click(function(){
		if($("#allAgreement2").is(":checked")){
			$('input:checkbox[id^=agreement2]:not(checked)').prop("checked", true);
		} else{
			$('input:checkbox[id^=agreement2]:checked').prop("checked", false);
		}
	});
	
	$('#allAgreement3').click(function(){
		if($("#allAgreement3").is(":checked")){
			$('input:checkbox[id^=agreement3]:not(checked)').prop("checked", true);
		} else{
			$('input:checkbox[id^=agreement3]:checked').prop("checked", false);
		}
	});
	
	$('#selectBoxValue').click(function(){
		$('#inputSelect').empty();
		if($('#selectBoxValue').val() == "0"){
			var input = '<input type="text" val="" placeholder="휴대폰번호를 입력하세요.">';
			$('#inputSelect').append(input);	
		}else if($('#selectBoxValue').val() == "1"){
			var input = '<input type="text" val="" placeholder="현금영수증카드번호를 입력하세요.">';
			$('#inputSelect').append(input);
		}else{
			var input = '<input type="text" val="" placeholder="주민등록번호를 입력하세요.">';
			$('#inputSelect').append(input);	
		}
		
	});
	
	$('#selectBoxValue1').click(function(){
		$('#inputSelect1').empty();
		if($('#selectBoxValue1').val() == "0"){
			var input = '<input type="text" val="" placeholder="휴대폰번호를 입력하세요.">';
			$('#inputSelect1').append(input);	
		}else if($('#selectBoxValue1').val() == "1"){
			var input = '<input type="text" val="" placeholder="현금영수증카드번호를 입력하세요.">';
			$('#inputSelect1').append(input);
		}else{
			var input = '<input type="text" val="" placeholder="사업자등록번호를 입력하세요.">';
			$('#inputSelect1').append(input);	
		}
		
	});
	
});

function div_OnOff(v, id) {
	// 라디오 버튼 value 값 조건 비교
	if (v == "1") {
		document.getElementById("2").style.display = "none"; // 숨김
		document.getElementById("3").style.display = "none"; // 숨김
		document.getElementById("1").style.display = ""; // 보여줌
	} else if (v == "2") {
		document.getElementById("1").style.display = "none"; // 숨김
		document.getElementById("3").style.display = "none"; // 숨김
		document.getElementById("2").style.display = ""; // 보여줌
	} else {
		document.getElementById("1").style.display = "none"; // 숨김
		document.getElementById("2").style.display = "none"; // 숨김
		document.getElementById("3").style.display = ""; // 보여줌
	}
}

function div_OnOff2(v2, id) {
	if (v2 == "1") {
		document.getElementById("12").style.display = "none"; // 숨김
		document.getElementById("11").style.display = ""; // 보여줌
	} else {
		document.getElementById("11").style.display = "none"; // 숨김
		document.getElementById("12").style.display = ""; // 보여줌
	}
}

function div_OnOff3(v3, id) {
	if (v3 == "T") {
		document.getElementById("F").style.display = "none"; // 숨김
		document.getElementById("N").style.display = "none"; // 숨김
		document.getElementById("T").style.display = ""; // 보여줌
	} else if(v3 == "F"){
		document.getElementById("T").style.display = "none"; // 숨김
		document.getElementById("N").style.display = "none"; // 숨김
		document.getElementById("F").style.display = ""; // 보여줌
	} else {
		document.getElementById("T").style.display = "none"; // 숨김
		document.getElementById("F").style.display = "none"; // 숨김
		document.getElementById("N").style.display = ""; // 보여줌
	}
}

function div_OnOff4(v4, id) {
	if (v4 == "1") {
		document.getElementById("102").style.display = "none"; // 숨김
		document.getElementById("101").style.display = ""; // 보여줌
	} else {
		document.getElementById("101").style.display = "none"; // 숨김
		document.getElementById("102").style.display = ""; // 보여줌
	}
}

function div_OnOff5(v5, id) {
	if (v5 == "1") {
		document.getElementById("idn").style.display = "none"; // 숨김
		document.getElementById("rcn").style.display = "none"; // 숨김
		document.getElementById("cpn").style.display = ""; // 보여줌
	} else if (v5 == "2") {
		document.getElementById("rcn").style.display = "none"; // 숨김
		document.getElementById("cpn").style.display = "none"; // 숨김
		document.getElementById("idn").style.display = ""; // 보여줌
	} else {
		document.getElementById("idn").style.display = "none"; // 숨김
		document.getElementById("cpn").style.display = "none"; // 숨김
		document.getElementById("rcn").style.display = ""; // 보여줌
	}
}
