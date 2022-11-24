$(function(){
		
			//'comment' 버튼 클릭했을 때
			$('#submitBtn').click(function(event){
				// 원래기능 지우기 
				//event.preventDefault();
				//event.stopPropagation();
			
				//사용자 입력값 받아옴
				//var param=$('#replyFrm').serialize();
				
				var param= { 	bno : $('input[name="bno"]').val(),
									replyer : $('input[name="replyer"]').val(),
									reply : $('textarea[name="reply"]').val(),
								};
								
				console.log(param);
				
				$.ajax({
					type : 'post',
					url: '../replies/new',
					data : param,
					success : function(result){
						$('#reply').val('');			//성공했을 경우 입력란을 비움
						replyList();						//댓글목록 다시 조회함.
					},
					error : function(err){
						console.log(err);
						alert('입력되지 않았습니다.');
					}//end of error
				})//end of ajax
				
			})//end of click
		})//end of function
		
		replyList();
		
		
		//댓글 목록 전체 조회
		function replyList()
		{
			$.ajax({
				type:'get',
				url: '../replies',
				dataType : 'json', 				// 라이브러리 필요(pom.xml)
				success : function(result){
					//alert('hi');
					
					let replyList = $('#replyList');
					replyList.empty();
					
					for(row of result){
						var aLi = $('<li/>');
						aLi.attr('class','media');
						
						//프로필사진
						var img = $('<img/>');
						img.attr('class','media-object');
						img.attr('src','/petdo/resources/images/blog/man-four.jpg');
						
						//댓글내용 담을 div
						var content=$('<div/>');
						content.attr('class','media-body');
						
							//댓글정보 list
							var ul=$('<ul/>');
							ul.attr('class','single-post-meta');
							
							//유저아이콘 + 사용자 이름
							var userLi=$('<li/>');
							var userIcon = $('<i/>');
							userIcon.attr('class','fa fa-user');
							userLi.append(userIcon);
							userLi.text('user name');
							
							//시계 아이콘 + 작성시간
							var timeLi=$('<li/>');
							var userIcon = $('<i/>');
							userIcon.attr('class','fa fa-clock-o');
							timeLi.append(userIcon);
							timeLi.text('user time');
							
							//달력 아이콘 + 작성날짜
							var calLi=$('<li/>');
							var userIcon = $('<i/>');
							userIcon.attr('class','fa fa-calendar');
							calLi.append(userIcon);
							calLi.text('user date');
							
							//list에 내용을 붙임
							ul.append(userLi);
							ul.append(timeLi);
							ul.append(calLi);
						
						//댓글내용p
						var p = $('<p/>');
						p.text('content P');
						
						//div에 댓글정보와 내용을 붙임
						content.append(ul);
						content.append(p);
						
						//li에 프로필 사진과 div를 붙임
						aLi.append(img);
						aLi.append(content);
						
						//기존 replyList에 붙임
						replyList.append(aLi);
						
					}//end of for
					
				},//end of success
				error : function(err){
					alert('error');
					console.log(err);
				}
			});//end of ajax
		}//end of reply List