<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 가입</title>

<style>
ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;
 	width: 620px;
 	height:600px;
   border: 1px solid #dee3eb;
}

li {
  	
    margin: 10px 5px 10px 5px;
    padding: 0 0 0 0;
    border : 0;
    float: left;
   	width:300px;
}

</style>

</head>
<body>
<h1 align="center">회원 가입</h1>
<hr>
<div>

<ul>
	<li>
		<div>사업자번호</div>
	</li>
	<li>
			<input type="text" name = "snum" size="29">	
	</li>
	
	<li>
		<div>대표자</div>
	</li>
	<li>
			<input type="text" name = "sbossname" size="29">	
	</li>
	
	<li>
		<div>상호명</div>
	</li>
	<li>
			<input type="text" name = "sname" size="29">	
	</li>

	<li>
		<div>업종 분류(치킨/피자/등)</div>
	</li>
	<li>
			<input type="text" name = "skind" size="29">
	</li>
	
	<li>
		<div>전화번호</div>
	</li>
	<li>
			<input type="text" name="stel" size="8">	
	</li>
	
	<li>
		<div>매장번호</div>
	</li>
	<li>
			<input type="text" name="sshoptel" size="29">
	</li>
	
	<li>
		<div>주소</div>
	</li>
	<li>
			<input type="text" name="saddr" size="29">
	</li>
	
	<li>
		<div>이메일</div>
	</li>
	<li>
			<input type="email" name="semail" size="29">
	</li>
		
	<li>
		<div>아이디</div>
	</li>
	<li>
			<input type="text" name="sid" size="29">
	</li>
	
	<li>
		<div>비밀번호</div>
	</li>
	<li>
			<input type="password" name="spwd" size="29">
	</li>
	
	<li>
		<div>비밀번호 확인</div>
	</li>
	<li>
			<input type="password" name="spwdcheck" size="29">
	</li>
	
	<li>
		<input type="button" id="" value="회원가입">
		<input type="reset" value="취소" onclick="location.href='main.jsp'">	
	</li>
	
	
	
	
	
</ul>
</div>

</body>
</html>