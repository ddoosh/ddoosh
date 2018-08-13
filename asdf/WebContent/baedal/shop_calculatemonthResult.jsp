<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    
<!DOCTYPE html>

<style>
ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;
 	width: 900px;
 	height:900px;
}

li {  	
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
   	width:900px;    
}

.calculate{
	width:250px;	
	float: left;

}

.calculate1{
	width:400px;	
	float: left;

}

</style>


<div>
  <div>
  <ul>
	<li>
		<h3>정산내역확인</h3>	
	</li>

	<li>
		<div>총매출 : ${calculateSum}원</div>
	<hr>
	</li>

	<li>
		<div>월매출 : ${tt }원</div>
	<hr>
	</li>
	
	<li>
		<h3>월간 판매 내역</h3>
	<br>
	</li>
	
	<li>
		<h4 class="monthleft">
		<div class="monthleft">
		${m }월 <a href="javascript:monthsub('${m}')"> << </a>  
			   <a href="javascript:monthplus('${m }')"> >> </a>
		</div>
		</h4>
	</li>
	
	<li>
		<div class="calculate1">상품</div>
		<div class="calculate">가격 </div>
		<div class="calculate">구매자</div>
	</li>
	<hr>
	
	<c:forEach var="a" items="${calculateMonth }">
		<li>
			<div class="calculate1">${a.order_num}</div>
			<div class="calculate">${a.amount}</div>
			<div class="calculate">${a.cid}</div>
		</li>
	<hr>
	</c:forEach> 
   
  </ul>
  </div>   
   
   
   
   
