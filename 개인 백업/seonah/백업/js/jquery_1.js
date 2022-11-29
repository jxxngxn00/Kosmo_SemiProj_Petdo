	var productId = $("#productId").val();
		
		$.getJSON("/admin/product/getAttaches/" + productId, function(result) {
			
			var str = '';
			
			$(result).each(function() {
				var data = this;
				
				str += makeHtmlcode_read(data);
					
			});
			
			$(".about_product").append(str);
			
		});
		//리뷰 버튼을 눌렀을때 
		$("#review").click(function() {
			//스크롤 버튼 활성화
			var scrollPosition = $(".reviews").offset().top;
			$("html").animate({scrollTop: scrollPosition}, 500); 
		});
		//QnA 버튼을 눌렀을때 
		$("#qna").click(function() {
			//스크롤 버튼 활성화
			var scrollPosition = $(".qnas").offset().top;
			$("html").animate({scrollTop: scrollPosition}, 500); 
		});
		//상품 상세 버튼을 눌렀을때
		$("#about").click(function() {
			//스크롤 버튼 활성화
			var scrollPosition = $(".about_product").offset().top;
			$("html").animate({scrollTop: scrollPosition}, 500); 
		});
		//갯수 선택 버튼을 눌렀을때
		$("#select_count").on('blur', function() {
			var count = $("#select_count").val();
			var price = $("#price").val();
			var opt = $(".opt_select").val();
			var name =$("#product_number").val();
			
				var shipping = '무료배송';
				var finalPrice = count*price;
		
			var str = '';
			
			str += '<p><label>수량 : </label><span>&nbsp;' + count + '</span>&nbsp;&nbsp;&nbsp;';	
			
			
			if (opt != 'S' && opt != 'M' && opt != 'L') {
				str =+'<lable><input type="hidden" name="product_count" value="'+count+'"/><input type="hidden" name= "product_number" value="'+name+'"/></lable>';
			} else {
				str += '<label>옵션 : </label><span>&nbsp;' + opt + '</span>&nbsp;&nbsp;&nbsp;';	
			}
		
			str	+= '<label>가격 : </label><span>&nbsp;' + price + ' 원</span></p>';
			str += '<h4><label>결제금액 : </label><span>&nbsp;' + finalPrice + ' 원</span></h4>'; 
			str += '<span class="glyphicon glyphicon-exclamation-remove"></span>';
			
			$(".selected_option").html(str);
		});
		
		$("#submit").click(function(){
			$("cart-form").submit();
		});
		
		// 셀렉트 박스의 값이 DB에 저장 된 수량보다 클 때 구매 불가하게 처리
			$("select[name=product_count]").change(function(){
			let stock = $("#product1_stock").val();
			let count = $("select[name=product_count]").val();
			if(Number(stock) < Number(count) ){
				alert('품절인 상품입니다.')
				$(".selected_option").hide();	// 결제 금액란 숨기기
				$("#orderbtn").hide();			// 주문하기 & 장바구니 버튼 숨기기
				$("#submit").hide();
			}
		});
		
		// 카테고리 리스트에서 품절 상품 클릭 시 발생 이벤트
		$('#soldOutproduct').click(function(){
			alert('품절인 상품입니다.')
		});
		
		
		
		
		
		
		
