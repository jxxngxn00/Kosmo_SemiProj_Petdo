$(function(){
		
			//'comment' 버튼 클릭했을 때
			$('#submitBtn').click(function(event){

			
				//사용자 입력값 받아옴				
				let param= { 	bno : $('input[name="bno"]').val(),
									replyer : $('input[name="replyer"]').val(),
									reply : $('textarea[name="reply"]').val()
								};
				
				$.ajax({
					type : 'post',
					url: '../replies/new',
					data : param,
					success : function(result){
						$('textarea[name="reply"]').val('');	//성공했을 경우 입력란을 비움
						$('#replyList').empty();
						replyList();									//댓글목록 다시 조회함.
					},
					error : function(err){
						console.log(err);
						alert('입력되지 않았습니다.');
					}//end of error
				})//end of ajax
				
			})//end of click

		


})//end of function
		
		
		replyList(); //목록조회 함수 호출
			
		
		//수정 버튼을 클릭했을 때
		$('#replyList').on("click","#modifyRply",function(event){

			event.preventDefault();

			var content = $(this).parents("div.media-body").find("p").text(); 	//p 태그의 값 저장
			$(this).parents("div.media-body").find("p").remove(); 				//li의 parent(ul)의 parent(div)의 자식(p태그) 삭제
				
			var input = $('<textarea/>');
			input.attr('id','mReply');
			input.val(content);													//p태그의 값을 textarea에 설정
			$(this).parents("div.media-body").append(input);					//div에 붙임

			$(this).attr('id','modifyRply2');
		});//end of click
		
		$('#replyList').on("click","#modifyRply2",function(event){			//수정 버튼을 다시 눌렀을 때 
			
			let rrno = $(this).parents("div.media-body").find('input[name="rno"]').val();
			var param = {		rno : rrno,
				replyer : $('#mReplyer').text(),
				reply : 	$('#mReply').val()
				};
				
			console.log(param);

			$.ajax({
				type:'post',
				url:'../replies/'+rrno,
				data:param,
				success : function(result){
					replyList();
				},
				error : function(err){
					alert('에러');
				}

			});//end of ajax
		
		})//end of click(수정버튼을 다시 누름)
	
		//삭제 버튼을 클릭했을 때
		$('#replyList').on("click","#deleteRply",function(){
			let status=confirm("댓글을 삭제하시겠습니까?");

			if(status){
				let rno=$(this).parents("div.media-body").find('input[name="rno"]').val();

				$.ajax({
					type:'delete',
					url:'../replies/'+rno,
					success : function(result){
						replyList();
					},
					error : function(err){
						alert('에러');
					}
				
				});//end of ajax
			}
			

		})//end of click

		
		//댓글 목록 전체 조회
		function replyList()
		{
			$.ajax({
				type:'get',
				url: '../replies',
				data: {bno : $('input[name="bno"]').val()},
				dataType : 'json', 				// 라이브러리 필요(pom.xml)
				success : function(result){
					//alert('hi');
					
					let replyList = $('#replyList');
					replyList.empty();
					
					for(row of result){
						var aLi = $('<li/>');
						aLi.attr('class','media');
						
						//프로필사진
						var aTag = $('<a class="pull-left" href="#"/>');
						var img = $('<img/>');
						img.css('margin-left','10px');

						let rand = Math.floor((Math.random()*6)+1);


						img.attr('class','media-object');
						img.attr('src','../resources/images/profile/profile_'+rand+'.png');
						img.css('width','100%');
						aTag.append(img).trigger("create");
						
						//댓글내용 담을 div
						var content=$('<div/>');
						content.attr('class','media-body');
						
							//댓글정보 list
							var ul=$('<ul/>');
							ul.attr('class','sinlge-post-meta');

							var rno=$('<input type="hidden" name="rno"/>');
							rno.val(row.rno);

							//유저아이콘 + 사용자 이름
							var userLi=$('<li/>');
							userLi.attr('id','mReplyer');
							userLi.html('<i class="fa fa-user"></i>'+row.replyer).trigger("create");
							
							//시계 아이콘 + 작성시간
							var timeLi=$('<li/>');
							timeLi.html('<i class="fa fa-clock-o"></i>'+row.rTime).trigger("create");
							
							//달력 아이콘 + 작성날짜
							var calLi=$('<li/>');
							calLi.html('<i class="fa fa-calendar"></i>'+row.rDate).trigger("create");

							//수정 아이콘(버튼)
							var modLi=$('<li/>');
							modLi.html('<a href="" id="modifyRply"><i class="fa fa-calendar"></i>수정</a>').trigger("create");

							//삭제 아이콘(버튼)
							var delLi=$('<li/>');
							delLi.html('<a href="" id="deleteRply"><i class="fa fa-trash-o" aria-hidden="true"></i>삭제</a>').trigger("create");

							//list에 내용을 붙임
							ul.append(userLi).trigger("create");
							ul.append(timeLi).trigger("create");
							ul.append(calLi).trigger("create");
							ul.append(rno);

							if($('input[name="replyer"]').val()==row.replyer){
								ul.append(modLi).trigger("create");
								ul.append(delLi).trigger("create");						
							}

						//댓글내용
						var p = $('<p/>');
						p.text(row.reply);
						
						//div에 댓글정보와 내용을 붙임
						content.append(ul).trigger("create");
						content.append(p).trigger("create");
						
						//li에 프로필 사진과 div를 붙임
						aLi.append(aTag).trigger("create");
						aLi.append(content).trigger("create");
						
						//기존 replyList에 붙임
						replyList.append(aLi).trigger("create");
						
					}//end of for
					
				},//end of success
				error : function(err){
					alert('error');
					console.log(err);
				}
			});//end of ajax
		}//end of reply List