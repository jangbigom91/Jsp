// 휴대폰 정규 표현식
var regHp = /^\d{3}-\d{4}-\d{4}$/;

// 최종 점검을 위한 상태변수 선언
var isHpOk = false;

$(document).ready(function(){
	
	var alreadyCheck = false;
	
	$('input[name=hp]').focusout(function(){
		
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var hp = tag.val();
		var json = {"hp": hp};
		
		if(regHp.test(hp) == false) {
			alert('휴대폰번호는 -포함 13자리 입력입니다.');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		// 모든 검증이 통과되고 통신시작
		$.ajax({
			url: '/Farmstory1/user/proc/checkHp.jsp',
			type: 'get',
			data: json,
			dataType: 'json',
			success: function(data){
				
				if(data.result == 1) {
					$('.resultHp').css('color', 'red').text('이미 사용중인 번호입니다.');
					tag.focus();
				}else {
					$('.resultHp').css('color', 'green').text('사용 하실 수 있는 번호입니다.');
					isHpOk = true;
				}
			}
			
		});
		
	});
});