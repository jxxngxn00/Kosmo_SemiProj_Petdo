/**
 * 
 */
$(function(){
	
	//환불이나 교환 클릭시 폼 띄우기
	$('#dataTable tbody a[data-toggle="modal"]').click(function(){
		let accept = $('a#acceptBtn');	//승인버튼
		let reject = $('a#rejectBtn');		//거절버튼
		
		let text = $(this).parents('tr').find('td:eq(0)').text(); //a태그의 부모(td)의 부모(tr) 중 첫번째 자식(td)의 값 저장

		accept.attr('href', accept.attr('href')+text ); 			//승인 버튼 링크 수정
		reject.attr('href', reject.attr('href')+text );				//거절 버튼 링크 수정
		
		//alert('reject : '+reject.attr('href'));
		
		let status = $(this).find('span.text').text();
		$('#status').val(status);
		
		let cUrl ="";
		
		
		if(status == '교환') {
			$('#reason').attr('name','exchange'+$('#reason').attr('name'));
			$('#reason_detail').attr('name','exchange'+$('#reason').attr('name'));
			cUrl='eReason.do';
			
		}else if(status == '환불') {
			$('#reason').attr('name','refund'+$('#reason').attr('name'));
			$('#reason_detail').attr('name','refund'+$('#reason').attr('name'));
			cUrl='rReason.do';
		}
		
		let param = {num:text};
		
	        $.ajax({
	            type:'post',
	            url:cUrl,
	            data: param,
	            dataType : 'json',
	            success : function(result){
	        	if(status == '교환') {
	        		console.log(result);
		        	$('#reason').val(result.exchange_reason);
		        	$('#reason_detail').val(result.exchange_reason_detail);
	    			
	    		}else if(status == '환불') {
	    			console.log(result);
		        	$('#reason').val(result.refund_reason);
		        	$('#reason_detail').val(result.refund_reason_detail);
	    		}
	        },
	            error : function(err){
	                console.log(err);
	                alert("에러");
	            }
	        })//end of ajax
		
	
	
	
	})//end of click
	
})//end of function
