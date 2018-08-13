<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <style>
ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;
 	width: 900px;
 	height:900px;
}

li {
  	
    margin: 10px 5px 10px 5px;
    padding: 0 0 0 0;
    border : 0;
    float: left;
   	width:300px;
}

</style>
<script>
$(document).ready(function(){
	$("#shop_menuupdate").click(function(){
		window.open("shop_menuSelecAction?snum=${svo.snum}&sname=${svo.sname}",""," width=900 height=800 ");
	})	
});
	
function shop_optionupdate(){
		$.ajax({
			type:"post",
			url:"shop_optionUpDateCheckAction",
		    data:{"snum":$("#snum").val(),
		    	  "spwd":$("#spwd").val()}, 
			success: function(data){				
				data =$.parseJSON(data);
				
				if(data.result==1){					
					$.ajax({
						type:"post",
						url:"shop_optionUpDateAction",
						 data:{"snum":$("#snum").val(),"sbossname":$("#sbossname").val(),"sname":$("#sname").val(),
						    	"skind":$("#skind").val(),"stel":$("#stel").val(),"sshoptel":$("#sshoptel").val(),
						    	"saddr":$("#saddr").val(),"semail":$("#semail").val(),"sid":$("#sid").val(),
						    	"spwd":$("#spwd").val()}, 
						success: function(data){						
							$("#cccc").html(data);
							alert("변경이 성공하였습니다");
						},
					});					
				}else{					
					alert("비밀번호가 틀렸습니다.")		
				}
			},			
		});	
	};

</script>

<div>
<h1 align="center">사업자 수정</h1>
<hr>
<div id="cccc">

<ul>
	<li>
		<div>사업자번호</div>
	</li>
	<li>
			<input type="text" id="snum" name = "snum" size="29" value="${svo.snum }">	
	</li>
	
	<li>
		<div>대표자</div>
	</li>
	<li>
			<input type="text" id="sbossname"  name = "sbossname" size="29" value="${svo.sbossname }">	
	</li>
	
	<li>
		<div>상호명</div>
	</li>
	<li>
			<input type="text" id="sname"   name = "sname" size="29" value="${svo.sname }">	
	</li>

	<li>
		<div>업종 분류(치킨/피자/등)</div>
	</li>
	<li>
			<input type="text" id="skind"  name = "skind" size="29" value="${svo.skind }">
	</li>
	
	<li>
		<div>전화번호</div>
	</li>
	<li>
			<input type="text" id="stel"  name="stel" size="8" value="${svo.stel }">	
	</li>
	
	<li>
		<div>매장번호</div>
	</li>
	<li>
			<input type="text" id="sshoptel"  name="sshoptel" size="29" value="${svo.sshoptel }">
	</li>
	
	<li>
		<div>주소</div>
	</li>
	<li>
			<input type="text" id="saddr"  name="saddr" size="29" value="${svo.saddr }">
	</li>
	
	<li>
		<div>이메일</div>
	</li>
	<li>
			<input type="email" id="semail"  name="semail" size="29" value="${svo.semail }">
	</li>
		
	<li>
		<div>아이디</div>
	</li>
	<li>
			<input type="text" id="sid"  name="sid" size="29" value="${svo.sid }" disabled="disabled">
	</li>
	
	<li>
		<div>비밀번호</div>
	</li>
	<li>
			<input type="password" id="spwd" size="29" placeholder="비밀번호를 입력하세요">
	</li>
	
	<li>
		<div>메뉴 설정</div>
	</li>
	<li>
			<input type="button"  value="메뉴 설정" id="shop_menuupdate">
	</li>
	
	<li>
		<input type="button"  value="정보 수정" onclick="shop_optionupdate()">
		<input type="reset" value="취소" onclick="location.href='shop_main.jsp'">	
	</li>
</ul>
</div>
</div>
