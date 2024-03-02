<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미를 함께하는 만남, 모임</title>
<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/demo.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<style>
header {
	position: fixed;
	background-color: white;
	top: 0; left: 0;
	height: 80px; width: 100%;
	border-bottom: 4px solid #95B8E7;
	z-index: 999;
}

header nav ul {
	display: flex;
	text-align: center;
}

header nav ul li {
	padding: 20px 10px;
	width: 88px;
	list-style-type: none;
}

header nav ul li a {
	padding-bottom: 10px;
	border-bottom: 0;
	border-color: white;
    transition: border-bottom 0.7s ease-in-out;
}

a:link, a:visited, a:hover, a:active {
	color: #333;
	text-decoration-line: none;
}

header nav ul li a:hover {
	border-bottom: 2px solid #95B8E7;
}

section {
	padding-top: 150px; 
	padding-bottom: 150px;
	height: 100vh;
}
.tabs-header {
	padding: 40px;
	background-color: white;
}
body {
	overflow: hidden;
	height: 100vh;
}
.easyui-tabs .tab {
	padding: 7%;
	padding-top: 0;
	display: none; 
	overflow: scroll;
}
.fixed-border {
  display: fixed;
  border: 2px solid black;
  width: 200px; /* 너비와 높이를 원하는 값으로 조정하세요 */
  height: 100px;
  top: 50%; /* 원하는 위치로 수정하세요 */
  left: 50%; /* 원하는 위치로 수정하세요 */
  transform: translate(-50%, -50%);
}
</style>
<script>
// 모니터의 크기에 따라 tabsDiv 크기 조절
window.onload = function() {
    var screenWidth = window.screen.width;
    var screenHeight = window.screen.height;

    var layoutDiv = document.getElementsByClassName('easyui-layout');

    layoutDiv[0].style.width = screenWidth / 1.5 + 'px';
    layoutDiv[0].style.height = screenHeight * 1.1 / 2 + 'px';
    layoutDiv[0].style.top = -(screenHeight / 20) + 'px';
}

$(document).ready(function() {
	$('#tt').tabs({
		onSelect:function(title) {
		}
	});
});
</script>
</head>
<body>
	<!-- Header -->
	<header>
		<nav>
    		<ul>
    			<li class="active" style="margin-left: 1%; margin-right: 1%;"><a href="#">홈</a></li>
    			<li><a href="#">모임</a></li>
    			<li><a href="#">인기 게시물</a></li>
    			<li><a href="#">내 정보</a></li>
    			<li><a href="#">고객센터</a></li>
    			<li style="margin-left: 45%;"><a href="#">로그인</a></li>
    			<li><a href="#">회원가입</a></li>
    		</ul>
    	</nav>
	</header>
	
	<!-- section -->
	<section>
	
		<!-- tabs -->
		<div class="container" style="display: flex; justify-content: center; height: 100%;">
			<div class="easyui-layout" style="position: relative; width: 99%; height: 400px;">
				<div id="tt" class="easyui-tabs" data-options="region:'center'" style="position: relative; width: 99%; height: 400px;">
				    <div class="tab" title="공지사항">
				    	<p>안녕하세요 취미 공유 서비스 플랫폼 "모임"입니다.</p>
			         	<p>반복되는 일상에서 벗어나 새로운 모임을 찾아보세요!</p>
			         	<br>
			         	<p>모임을 생성하면 영업일 기준 1-2일 내에 관리자를 통해 승인 처리됩니다.</p>
			         	<p>플랫폼 "모임"은 상호 간의 매너있는 커뮤니티 문화를 지향합니다.</p>
			         	<br>
			         	<br>
			         	<p>감사합니다.</p>
				    </div>
				    <div class="tab" title="Tab2">
				    	<p>tab2</p>
				    </div>
				</div>
			</div>
	    </div>
	</section>
	                        

	                            

</body>
</html>