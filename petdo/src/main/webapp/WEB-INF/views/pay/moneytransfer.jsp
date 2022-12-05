<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>계좌이체</title>
    <% String pjName="/petdo"; %>
   <link href="<%=pjName %>/resources/pay-css/main.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>
    <div class="wrapper">
        <h2>계좌이체하기</h2>
        <form method="POST" action="orderInsert.do?user_id=${sessionScope.login }">
            <h4></h4>
            <div class="input-group">
                <select name="bankname" id="bank-select">
                <option value="">--은행을 선택해주세요--</option>
   				<option value="nonghyup">농협</option>
    			<option value="ibk">IBK기업은행</option>
    			<option value="shinhan">신한은행</option>
    			<option value="kb">국민은행</option>
    			<option value="sh">신협</option>
    			<option value="kakako">카카오뱅크</option>
                </select>
                
                <div class="input-box">
                    <input type="text" placeholder="계좌번호" required class="name">
                    <i class="fa fa-won icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="text" placeholder="이름" required class="name">
                    <i class="fa fa-user icon"></i>
                </div>
            </div>
            
              <div class="input-group">
                <div class="input-box">
                    <input type="text" placeholder="주민번호" required class="name">
                    <i class="fa fa-info-circle icon" ></i>
                </div>
            </div>
            
              <div class="input-group">
                <div class="input-box">
                    <input type="email" placeholder="이메일 주소" required class="name">
                    <i class="fa fa-envelope icon"></i>
                </div>
            </div>

            <div class="input-group">
                <div class="input-box">
		                  
		           <c:forEach var="payment" items="${payList}" varStatus="i">
		           		<input type="hidden" name="list[${i.index}].user_id" value="${payment.user_id}"/>
		               	<input type="hidden" name="list[${i.index}].product_count" value="${payment.product_count}"/>
		            	<input type="hidden" name="list[${i.index}].product_price" value="${payment.product_price}"/>
		            	<input type="hidden" name="list[${i.index}].product_name" value="${payment.product_name}"/> 
		           </c:forEach>	
                    <button type="submit">이체하기</button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>