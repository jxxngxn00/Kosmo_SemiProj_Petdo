<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Form</title>
   <% String pjName="/petdo"; %>
   <link href="<%=pjName %>/resources/pay-css/main.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        
               
        
</head>

<body>
    <div class="wrapper">
        <h2>신용카드 결제</h2>
        <form method="POST" action="orderInsert.do">
            <h4>개인정보</h4>
            <div class="input-group">
            		<%-- <input type="hidden" name="product_count" value="${pay.product_count}"/>
            		<input type="hidden" name="product_price" value="${pay.product_price}"/>
            		<input type="hidden" name="product_number" value="${pay.product_number}"/>
            		<input type="hidden" name="product_name" value="${pay.product_name}"/> 
            		<input type="hidden" name="user_id" value="${pay.user_id}"/>  --%>
                <div class="input-box">
                    <input type="text" placeholder="이름을 입력해주세요" required class="name" name="user_name">
                    <i class="fa fa-user icon"></i>
                </div>
                 <div class="input-box">
                    <input type="text" placeholder="아이디을 입력해주세요" required class="name" name="user_id" />
             
                    <i class="fa fa-id-badge icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="email" placeholder="이메일을 입력해주세요" required class="name" name="user_email">
                    <i class="fa fa-envelope icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <h4>생일</h4>
                    <input type="text" placeholder="DD" class="dob">
                    <input type="text" placeholder="MM" class="dob">
                    <input type="text" placeholder="YYYY" class="dob">
                </div>
                <div class="input-box">
                    <h4>성별</h4>
                    <input type="radio" id="b1" name="gendar" checked class="radio">
                    <label for="b1">남성</label>
                    <input type="radio" id="b2" name="gendar" class="radio">
                    <label for="b2">여성</label>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <h4>결제수단</h4>
                    <input type="radio" name="pay" id="bc1" checked class="radio">
                    <label for="bc1"><span><i class="fa fa-cc-visa"></i>신용카드</span></label>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="text" placeholder="카드번호를 '-' 빼고 입력해주세요" required class="name">
                    <i class="fa fa-credit-card icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="text" placeholder="CVC를 입력해주세요" required class="name" value="card_cvc" style="height:50px;">
                    <i class="fa fa-id-card icon"></i>
                </div>
                <div class="input-box">
          			 <input type="date" class="name" placeholder="날짜를 입력해주세요"  required value="order_date" style="height:50px;">
          			 <i class="fa fa-calendar icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <button type="submit">결제하기</button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>