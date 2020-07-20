// 폼 검증에 사용할 상태 변수
var isNickOk = false;

// 별명 중복체크	
$(document).ready(function(){
	var inputNick = $('input[name=nick]');
	
	inputNick.focusout(function(){
						
		var nick = $(this).val();
		
		$.ajax({
			url:'/Jboard2/user/checkNick.do?nick='+nick,
			type:'get',
			dataType:'json',
			success:function(data){
				
				if(data.result == 1) {
					$('.resultNick').css('color', 'red').text('이미 사용중인 별명 입니다.');
					isNickOk = false;
				}else {
					$('.resultNick').css('color', 'green').text('사용할 수 있는 별명 입니다.');
					isNickOk = true;
				}
			}
			
		});
		
	});
	
});