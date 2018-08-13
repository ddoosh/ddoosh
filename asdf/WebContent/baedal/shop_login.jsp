<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 로그인</title>

<style>
ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;
 	width: 620px;
 	height:150px;
   border: 1px solid #dee3eb;      
}

li {  	
    margin: 10px 5px 10px 5px;
    padding: 0 0 0 0;
    border : 0;
    float: left;
   	width:270px;
    border: 1px solid #dee3eb;   
}

</style>

</head>
<body>
  <h1 align="center">싸좡님 로그인</h1>
  <div>
	<form action="shop_loginAction" method="post">
		<ul>
			<li>
				<div>아이디</div>
			</li>
			
			<li>		
				<input type="text" name = "sid" size="29">		
			</li>	
			
			<li>
				<div>비밀번호</div>
			</li>
			
			<li>
				<input type="password" name="spwd" size="29">
			</li>
			
			<li>
				<input type="submit" value="로그인" >
				<input type="reset" value="취  소">
			</li>
			
		</ul>
	</form>
  </div>

</body>
</html>