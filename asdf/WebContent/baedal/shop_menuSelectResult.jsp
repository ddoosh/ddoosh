<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>


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


<h1 align="center">음료 메뉴</h1>
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


<h1 align="center">	사이드 메뉴 </h1>
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
		<input type="button" value="메뉴 등록" onclick="shop_menuinsert2(2)">
	</div>
	</li>
	
	<br>
	<hr>

</ul>
