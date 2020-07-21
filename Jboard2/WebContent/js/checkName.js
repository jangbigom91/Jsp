// 이름 검증
var regName  = /^[가-힣]{2,5}$/; // 이름 유효성 검사 2~4자 사이   
var isNameOk = false;

$(function(){
	
	$('input[name=name]').focusout(function(){
						
		var name = $(this).val();
		
		if(regName.test(name) == false) {
			
			return false;
			
		}else {
			isNameOk = true;
		}
	});	
});