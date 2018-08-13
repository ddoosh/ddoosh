<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Daum 지도 시작하기</title>
</head>
<body>
	<div id="map" style="width:500px;height:400px;"></div>
	 <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>  
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ced523d3c7426aeabd1d195897e3d810&libraries=services"></script>
	<script>
	function c(){
	 	var geocoder = new daum.maps.services.Geocoder();
		var x =0;
		var y =0;
		var callback = function(result, status) {
		    if (status === daum.maps.services.Status.OK) {
		    	console.log(result);
		    	x = result[0].address.x;
		    	y = result[0].address.y;
		    	alert(y);
		    	y= parseInt(y * 1000000)/1000000;		    	
		    }
		};
	
		geocoder.addressSearch('해남군 송지면', callback); 
	 	var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(34.36954, 126.51948),
			level: 3
		};
		var map = new daum.maps.Map(container, options); 		
	}		
		
	</script>
	
	<input type="button" onclick="c();" value="몰라">
</body>
</html>