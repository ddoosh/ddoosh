<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<style>
ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;
 	padding: 0 0 0 0;
}

li {  	
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
   	width:600px;    
}

#sallermain{
	 list-style:none;
	 padding: 0 0 0 0;
    margin-right:auto;
    margin-left:auto;
 	width: 900px;
 	height:20px;	
}

.sallermain{
	margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
   	width:220px;
	text-align: center;
}

#cccc{
	margin-right:auto;
    margin-left:auto;
	width: 900px;
	height: 800px;
}

#cccc1{

	margin-right:auto;
    margin-left:auto;
	width: 598px;
	height: 700px;	
	float: left;	
}

#cccc2{
	margin-right:auto;
    margin-left:auto;
	width: 298px;
	height: 700px;	
	float: left;
}

#dddd1{
	width: 250px;
	height: 250px;
	float: left;
	border: 1px solid #dee3eb;
	margin: 20px 20px 20px 20px;
}

#dddd2{
	width: 250px;
	height: 300px;
	border: 1px solid #dee3eb;
	margin: 20px 20px 20px 20px;
}

/* 판매자 매뉴 */
.menusaller{
	text-decoration: none;
}

a:link {
	color: black;
}

.youtubeWrap {
  position: relative;
  z-index: 10;  
}

</style>
<script>
	function review(snum){	
		$.ajax({
			type:"post",
			url:"shop_reviewAction",
		    data:{"snum":snum}, 
			success: function(data){				
				$("#cccc").html(data);
			},			
		});
	}
	
	function calculate(snum){		
		$.ajax({
			type:"post",
			url:"shop_calculateAction",
		    data:{"snum":snum}, 
			success: function(data){				
				$("#cccc").html(data);
			},			
		});		
	}
	
	function saleList(snum){
		$.ajax({
			type:"post",
			url:"shop_saleListAction",
		    data:{"snum":snum}, 
			success: function(data){
				
				$("#cccc").html(data);
			},
			
		});
		
		
	}
	function shopUpDate(snum){
		$.ajax({
			type:"post",
			url:"shop_UpDateAction",
		    data:{"snum":snum}, 
			success: function(data){				
				$("#cccc").html(data);
			},			
		});		
	}

</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 페이지</title>
<div><a href="index.html" id="logo"><img src="images/logo1.jpg" alt="admin_logo" height="63" width="157" /></a></div>
<br><br><br><hr><br>
	<div>
	<h2>배달의 민족 최신광고 보기</h2></div>
	<br>
	<c:if test="${snum !=null}">
		${snum }님 안녕하세요
	</c:if>
	<br>
	
	<ul id="sallermain">
		<li class="sallermain">
			<a class="menusaller" href="javascript:shopUpDate('${snum}')">
				업소 수정 
			</a>
		</li>		
		
		<li class="sallermain">
			<a class="menusaller" href="javascript:calculate('${snum}')">
				정산 내역
			</a>
		</li>
		
		<li class="sallermain">
			<a class="menusaller" href="javascript:saleList('${snum}')">
				판매 내역
			</a>
		</li>		
		
		<li  class="sallermain">
			<a class="menusaller" href="javascript:review('${snum}')">
				리뷰확인
			</a>
		</li>		
	</ul>
	
<div id="cccc">	
	<!-- 여기는 사장님 꿀팁 -->
<div id="cccc1">
	<ul>
		<li id="dddd1">
			<div class="youtubeWrap">
			  <iframe width="250" height="250" src="https://www.youtube.com/embed/D4Z2nEdzkdc" frameborder="0" allowfullscreen></iframe>
			 </div>
		</li>
		<li id="dddd1">
			<div class="youtubeWrap">
			  <video width="250" height="250" tabindex="-1" src="blob:https://www.youtube.com/781edd53-5509-4033-a716-e93043dfa2f6"></video>
			 </div>
		</li>
	</ul>	

</div>
	<!-- 여기는 최신기사 -->
<div id="cccc2">
	<ul>
		<li id="dddd2"></li>
		<li id="dddd2"></li>
	
	</ul>

</div>

</div>
</div>

<div>성공 업소 사장님 꿀팁</div>
<br>
<div>최신기사</div>

</body>
</html>