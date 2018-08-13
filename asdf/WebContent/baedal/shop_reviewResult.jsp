<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 
<!DOCTYPE html>

<style>

li {  	
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
   	
    
}   

#review1{
 	list-style:none;
    margin-right:auto;
    margin-left:auto;
    padding: 0 0 0 10px;
    
 	width: 880px;
 	height:50px;
	/* border: 1px solid #dee3eb; */
	
}

#review2{
	padding: 10px 0 0 10px;
 	list-style:none;
    margin-right:auto;
    margin-left:auto;
 	width: 880px;
 	height:150px;
	/* border: 1px solid #dee3eb; */
}

</style>
 
    <h3>리뷰 확인</h3><br>
    <h3>우리가게 리뷰!</h3><br>    
 	<c:forEach var="a" items="${rvo}">  
 	
    <ul id="review1">
    	<li>
    		<div>
    			${a.cid}님의 리뷰 　　 리뷰잉 날짜 : ${a.cinput_date} 
    		</div>
    	</li>
    	<li>
    		<div>
    			<textarea rows="5" cols="80">${a.ccontent }</textarea>
    		</div>
    	</li>
    </ul>	    
    
    <c:if test="${a.scontent!=''}">
    <ul id="review2">
    	<li>
    		<div><b>사장님</b> 　　　&nbsp;　　　 리플라잉 날짜 : ${a.sinput_date}</div>
    	</li>
    	<li>
    		<textarea rows="5" cols="80"id="scontent1">
    			${a.scontent }
    		</textarea>
    	</li>
    	<li>    		
    		<input type="button" value="수정하기" onclick="shop_Reviewupdate1('${a.reviewnum}')">    	
    	</li>
    </ul>
    </c:if>
        
    <c:if test="${a.scontent==''}">
    <ul id="review2">    
    	<li>
    		<div><b>사장님</b>${a.sinput_date}</div>
    	</li>
    	<li>
    		<textarea rows="5" cols="80" id="scontent2"></textarea>
    	</li>
    	<li>    		
    		<input type="button" value="댓글 달기" onclick="shop_Reviewupdate2('${a.reviewnum}')">    	
    	</li>
    </ul>
    </c:if>
 
	</c:forEach>    


