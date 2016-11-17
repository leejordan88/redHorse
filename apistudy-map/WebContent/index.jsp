<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyB7-yvYwqqAGHeYwnk_8aCqq-cSQIN38-4&region=KR"></script>
<script type="text/javascript">
$(document).ready(function(){
    google.maps.event.addDomListener(window, 'load', initialize);
function initialize(){
    if($("#google_map").length) {
    var mapOptions = { //구글 맵 옵션 설정
        zoom : 16, //기본 확대율
        center : new google.maps.LatLng(37.402036, 127.106138), // 지도 중앙 위치
        scrollwheel : true, //마우스 휠로 확대 축소 사용 여부
        mapTypeControl : false, //맵 타입 컨트롤 사용 여부
        disableDefaultUI : true, //기본 UI 사용 여부
        disableDoubleClickZoom : true, //더블클릭 중심으로 확대 사용 여부
        draggable : true, //지도 드래그 이동 사용 여부
        keyboardShortcuts : true, //키보드 단축키 사용 여부
        maxZoom : 18, //최대 줌
        minZoom : 1 //최소 줌 */
    };
 
    var map = new google.maps.Map(document.getElementById('google_map'), mapOptions); //구글 맵을 사용할 타겟
    
    var image = {
    	    url: 'images/icon.png',
    	    // This marker is 20 pixels wide by 32 pixels high.
    	    size: new google.maps.Size(20, 32),
    	    // The origin for this image is (0, 0).
    	    origin: new google.maps.Point(0, 0),
    	    // The anchor for this image is the base of the flagpole at (0, 32).
    	    anchor: new google.maps.Point(0, 32)
    	  };
 
    var marker = new google.maps.Marker({ //마커 설정
        map : map,
        position : map.getCenter(37.404842, 127.105816), //마커 위치
        title:"KOSTA!"
    });
    google.maps.event.addDomListener(window, "resize", function() { //리사이즈에 따른 마커 위치
        var center = map.getCenter();
        google.maps.event.trigger(map, "resize");
        map.setCenter(center); 
    });
    }//if-end
}//function-end
 
});//jQuery-end
</script>
<title>Insert title here</title>
</head>
<body>
구글지도<br>
<div id="google_map" style="width:500px; height:500px;"></div>
</body>
</html>