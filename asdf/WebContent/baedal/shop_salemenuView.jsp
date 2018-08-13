<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">

ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;
    display: table;
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

.shop_salemenu{
	width: 900px;
	height: 400px;
}

.shop_salemenu2{
	width: 900px;
	height: 300px;
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
function shop_salestatechang1(order_num,state){
	
	$.ajax({
		type:"post",
		url:"shop_SaleStatechangAction",
	    data:{"order_num":order_num,"state":state},
		success: function(data){			
			$("#cccc").html(data);
		},		
	});	
}

function saleAddrMap(addr){
	window.open("http://map.daum.net/link/search/"+addr,""," width=900 height=800 ");
}

</script>

</head>
<body>
<div id ="cccc">
<div  class="shop_salemenu">
<div class="shop_headertitle">
	<h3 class="shop_h3">주문 상세</h3>
</div>
	<ul>
		<li>메뉴 넘버</li>
		<li>메뉴명</li>
		<li>설명</li>
		<li>가격</li>
		<li>메뉴종류</li>
	</ul>
	<hr>


	<c:forEach var="a" items="${smvo}">
		<ul>
			<li>${a.mcode }</li>
			<li>${a.menu_name }</li>
			<li>${a.menu_descript }</li>
			<li>${a.menu_price }</li>
			<li>
				<c:if test="${a.menu_side==0}">
					메인 메뉴
				</c:if>
				<c:if test="${a.menu_side==1}">
					사이드 메뉴
				</c:if>
				<c:if test="${a.menu_side==2}">
					음료 메뉴
				</c:if>
			</li>		
		</ul>
	</c:forEach>
	</div>
	
<div class="shop_salemenu2">
	<ul>
		<li>
			주소 :
		</li>
		<li>
			<a href="javascript:saleAddrMap('${addr}');">${addr }</a>
		</li>
	</ul>

<div align="right">
	<ul >
	
		<li>상품 상태 :</li>
		<c:if test="${state==0}">
			<li >
				배달 확인바람
				<input type="button" value="배달시작" onclick="shop_salestatechang1('${order_num}',1)  ">
			</li>
		</c:if>
		
		<c:if test="${state==1}">
			<li>
				배달중
				<input type="button" value="배달완료" onclick="shop_salestatechang1('${order_num}',2)">
			</li>
		</c:if>
		<c:if test="${state==0}">
			<li>
				<input type="button" value="배달취소" onclick="shop_salestatechang1('${order_num}',3)">
			</li>
		</c:if>
		<c:if test="${state==1}">
			<li>
				<input type="button" value="배달취소" onclick="shop_salestatechang1('${order_num}',3)">
			</li>
		</c:if>
		<c:if test="${state==3 }">
			취소
				<input type="button" value="확인" onclick="saleList('${snum}')">
		</c:if>
	
		<c:if test="${state==2}">
			배달완료
				<input type="button" value="확인" onclick="saleList('${snum}')">
		</c:if>
	</ul>
</div>
</div>
</div>
</body>
</html>