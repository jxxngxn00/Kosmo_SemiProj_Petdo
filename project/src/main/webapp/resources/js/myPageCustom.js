$(function(){
	let frm = $('#infoFrm');
	
	//수정버튼 클릭시
	$('#modify').click(function(){
		frm.attr('action','modify.do');
		frm.submit();
	});
	
	//탈퇴버튼 클릭시
	$('#delete').click(function(){
		frm.attr('action','delete.do');
		let res=confirm("petdo 사이트를 탈퇴합니다.");
		
		if(res) {
			frm.submit();﻿
		}
	});//end of click
	
})//end of function