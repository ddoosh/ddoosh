<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
   
ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;  
 	width: 900px;
}

li {
    margin: 0 0 0 0;
    padding: 0 30px 0 30px;
    border : 0;
    float: left;
    width: 120px;    
    text-align: center;   
}

.menusaller{
	text-decoration: none;
}

a:link {
	color: black;
}

.shop_headertitle{
	width: 900px;
	height: 62.44px;
}

.shop_h3{
	padding-top: 18.720px;
}

</style>
<script type="text/javascript">
function salemenuView(order_num){	
	$.ajax({
		type:"post",
		url:"shop_salemenuViewAction",
	    data:{"order_num":order_num}, 
		success: function(data){			
			$("#cccc").html(data);
		},		
	});
}

</script>

</head>
<body>
<div>
<div id="cccc">
<div class="shop_headertitle">
	<h3 class="shop_h3">주문 현황</h3>
</div>
<ul>
	<li>주문번호</li>
	<li>일시</li>
	<li>금액</li>
	<li>고객명</li>
	<li>상태</li>
	<br>
	<hr>
</ul>

<c:forEach var="a1" items="${sorder}">
 <ul>
	<li>
		<a class="menusaller" href="javascript:salemenuView('${a1.order_num}');">${a1.order_num}</a>
	</li>
	<li>${a1.order_date}</li>
	<li>${a1.amount }</li>
	<li>${a1.cid }</li>
	
	<c:if test="${a1.order_state==0 }">
		<li>
			주문 대기
		</li>
	</c:if>
	<c:if test="${a1.order_state==1 }">
		<li>
		  	배달 준비
		</li>
	</c:if>
	<c:if test="${a1.order_state==2 }">
		<li>
			배달완료
		</li>
	</c:if>
	<c:if test="${a1.order_state==3 }">
		<li>
			취소
		</li>
	</c:if>
</ul>
</c:forEach>
</div>
</div>
</body>
</html>