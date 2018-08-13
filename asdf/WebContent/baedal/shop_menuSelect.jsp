<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!DOCTYPE html>
<html>
    
<style>

/* abbr 디테일 속성 */
.menuabbr{
    outline:none;
    cursor: help;
    text-decoration: none;
}

ul {
    list-style:none;
    margin-right:auto;
    margin-left:auto;
    width: 800;
    height: auto;
 	padding: 0 0 0 0;
 	
}

/* 메뉴 뿌리기 속성 */
.menua{
	display:inline-block;
  	width: 200;
  	height:24px;
  	
    margin: 10px 0 5px 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
    text-align: center;
   
   	text-overflow: ellipsis;
   	overflow:hidden;
   	white-space:nowrap;
    word-spacing:inherit;  
}

/* 상위 메뉴 이름 */
.menuaa{
	display:inline-block;
  	width: 200;
  	height:24px;
  	float: left;
  	margin: 10px 0 20px 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
    text-align: center;
}

/* 메뉴 넣기  */
.menuaaa{
	display:inline-block;
  	width: 200;
  	height:24px;
  	float: left;
  	margin: 10px 0 20px 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
    text-align: center;
}

</style>
<script>
/*디테일 크기 조정*/
function resize(obj) {
	  obj.style.height = "1px";
	  obj.style.height = (12+obj.scrollHeight)+"px";
	}

function shop_delete(mcode){	
	if(window.confirm(mcode+" 정말 삭제 할까요?")){		
		$.ajax({
			type:"post",
			url:"shop_deleteAction",
		    data:{"mcode":mcode,"snum":'${snum}'}, 
			success: function(data){				
				$("#oooo").html(data);
			}			
		});	
	}
}	

function shop_menuinsert3(side){	
	$.ajax({
		type:"post",
		url:"shop_menuinsertAction",
		data:{"mname":$("#mname3").val(),"mprice":$("#mprice3").val(),
			 "mdetail":$("#mdetail3").val(),"side":side,"snum":'${snum}'}, 
		success: function(data){
			$("#oooo").html(data);
		}		
	});	
}

function shop_menuinsert2(side){
	$.ajax({
		type:"post",
		url:"shop_menuinsertAction",
		 data:{"mname":$("#mname2").val(),"mprice":$("#mprice2").val(),
			 "mdetail":$("#mdetail2").val(),"side":side,"snum":'${snum}'}, 
		success: function(data){
			$("#oooo").html(data);
		}		
	});	
}

function shop_menuinsert1(side){	
	$.ajax({
		type:"post",
		url:"shop_menuinsertAction",
		data:{"mname":$("#mname1").val(),
			 "mprice":$("#mprice1").val(),
			 "mdetail":$("#mdetail1").val(),
			 "snum":'${snum}',
			 "side":side}, 
		success: function(data){
			$("#oooo").html(data);
		}		
	});	
}

</script>

<html>


	<h1 align="center">
		메인 메뉴
	</h1>
  <div id="oooo">
	<ul>
	
		<li>
		<div class="menuaa">
			<h3>메뉴</h3></div>
		</li>
		<li >
		<div class="menuaa">
			<h3>가격</h3></div>
		</li>
		<li>
		<div class="menuaa">
			<h3>내용</h3></div>
		</li >
		<li >
		<div class="menuaa">
			<h3>기타</h3>
			</div>
		</li>
	</ul>


	<ul>
	<c:forEach var="a" items="${smvo}">
		<c:if test="${a.menu_side==0 }">
		<li>
		<div class="menua">
			${a.menu_name}
			</div>
		</li>
		<li >
		<div class="menua">
			${a.menu_price}
			</div>
		</li>
		
		<li>
		<div class="menua">
			<abbr class="menuabbr" title="${a.menu_descript}">
				${a.menu_descript}
			</abbr>
			</div>
		</li>
		
		<li >
		<div class="menua">
			<input type="button" value="메뉴 삭제" onclick="shop_delete('${a.mcode}')">
		</div>
		</li>
		<br>
	<hr>		
	
		</c:if>		
	</c:forEach>
	</ul>

	<ul>
		<li >
		<div class="menuaaa">
			<input type="text" id="mname1" placeholder="메뉴">
		</div>
		</li>
		<li>
		<div class="menuaaa">
			<input type="text" id="mprice1" placeholder="가격">
			</div>
		</li>
		<li>
		<div class="menuaaa">
			
			<textarea rows="1" cols="18" id="mdetail1" class="autosize" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="상세 설명"></textarea>
		</div>
		</li>
		<li><div class="menuaaa">
			<input type="button" value="메뉴 등록" onclick="shop_menuinsert1(0)">
		</div>
		</li>
		<br>
		<hr>
	</ul>


<h1 align="center">
		사이드 메뉴
	</h1>
	
	<ul>
		<li>
		<div class="menuaa">
			<h3>메뉴</h3></div>
		</li>
		<li >
		<div class="menuaa">
			<h3>가격</h3></div>
		</li>
		<li>
		<div class="menuaa">
			<h3>내용</h3></div>
		</li >
		<li >
		<div class="menuaa">
			<h3>기타</h3>
			</div>
		</li>
	</ul>



	<ul>
	<c:forEach var="a" items="${smvo}">
		<c:if test="${a.menu_side==1 }">
		<li>
		<div class="menua">
			${a.menu_name}
			</div>
		</li>
		<li>
		<div class="menua">
			${a.menu_price}
			</div>
		</li>
		<li>
		<div class="menua">
			<abbr  class="menuabbr" title="${a.menu_descript}">
				${a.menu_descript}
			</abbr>
			</div>
		</li>
		<li>
		<div class="menua">
			<input type="button" value="메뉴 삭제" onclick="shop_delete('${a.mcode}')">
		</div>
		</li>
		
		<br>
		<hr>
	
		</c:if>
	</c:forEach>
	</ul>

	<ul>
		<li >
		<div class="menuaaa">
			<input type="text" id="mname2" placeholder="메뉴">
		</div>
		</li>
		<li >
		<div class="menuaaa">
			<input type="text" id="mprice2" placeholder="가격">
		</div>	
		</li>
		<li >
		<div class="menuaaa">
			<textarea rows="1" cols="18" id="mdetail2" class="autosize" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="상세 설명"></textarea>
		</div>
		</li>
		<li>
		<div class="menuaaa">
			<input type="button" value="메뉴 등록" onclick="shop_menuinsert2(1)">
		</div>
		</li>
		
		<br>
		<hr>
	
	</ul>


<h1 align="center">
		음료 메뉴
	</h1>
	<ul>
	
		<li>
		<div class="menuaa">
			<h3>메뉴</h3></div>
		</li>
		<li >
		<div class="menuaa">
			<h3>가격</h3></div>
		</li>
		<li>
		<div class="menuaa">
			<h3>내용</h3></div>
		</li >
		<li >
		<div class="menuaa">
			<h3>기타</h3>
			</div>
		</li>
	</ul>



	<ul>
	<c:forEach var="a" items="${smvo}">
		<c:if test="${a.menu_side==2 }">
		<li>
		<div class="menua">
			${a.menu_name}
			</div>
		</li>
		<li>
		<div class="menua">
			${a.menu_price}
			</div>
		</li>
		<li>
		<div class="menua">
			<abbr  class="menuabbr" title="${a.menu_descript}">
				${a.menu_descript}
			</abbr>
			</div>
		</li>
		<li>
		<div class="menua">
			<input type="button" value="메뉴 삭제" onclick="shop_delete('${a.mcode}')">
		</div>
		</li>		
		<br>
		<hr>	
		</c:if>
	</c:forEach>
	</ul>

	<ul>
		<li >
		<div class="menuaaa">
			<input type="text" id="mname3" placeholder="메뉴">
		</div>
		</li>
		<li >
		<div class="menuaaa">
			<input type="text" id="mprice3" placeholder="가격">
		</div>	
		</li>
		<li >
		<div class="menuaaa">
			<textarea rows="1" cols="18" id="mdetail3" class="autosize" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="상세 설명"></textarea>
		</div>
		</li>
		<li>
		<div class="menuaaa">
			<input type="button" value="메뉴 등록" onclick="shop_menuinsert3(2)">
		</div>
		</li>
		
		<br>
		<hr>
	
	</ul>
  </div>
</html>

