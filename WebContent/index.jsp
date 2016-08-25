<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.xjh.bean.LeftNavItem"%>
<html >
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#nav_container {
	background-color: #919191;
	width:100%;
	margin:0px;
	padding:0px;
	 -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}

.li_normal {
	list-style-type:none;
	display: inline-flex;
	overflow:invisible;
}
li a{
	display: block;
    padding: 12px 16px;
    text-decoration: none;
    text-align:center;
}
li a.nav_normal {
	color: #000;
	text-align:center;
    background-color: #919191;
}
li a.nav_active {
    background-color: #4CAF50;
    text-align:center;
    color: white;
}
li a:hover {
    background-color: #4CAF50;
    text-align:center;
    color: white;
}
/**/
#left_navigator{
	padding-top: 10px;
	padding-left: 0px;
	padding-right: 0px;
	padding-bottom:0px;
	margin: 0px;
	height:800px;
	width:10%;
	overflow:auto;
	float:left;
	background-color: #F5F5F5;
	 -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
.lef_nav{
	text-align:center;
	list-style-type:none;
	width:100%;
	font-size:14px;
}
.lef_nav:hover{
 	background-color: #919191;
    text-align:center;
    color: white;
}
#content{
	background-color:white;
	margin:0px;
	padding:0px;
	position:absolute;
	width:90%;
	height:800px;
	right:0px;
	 -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
</style>
<title>学习笔记</title>
</head>
<body onload="">
	<script type="text/javascript">
	//顶部导航
		function refreshNavigator(id){
			
			refreshElemetns("nav_normal",id)
			refreshElemetns("nav_active",id)
		}
		
		function refreshElemetns(id,clickId){
			var nodes=document.getElementsByClassName(id);
			for(var i=0;i<nodes.length;i++){
				if(nodes[i].id==clickId){
					nodes[i].style.backgroundColor="#4CAF50";
					nodes[i].style.color="white";
				}else{
					nodes[i].style.backgroundColor="#919191";
					nodes[i].style.color="black";
				}
			}
		}
	//左边导航
	function render(node){node.style.backgroundColor="red"}
	function leftNavClick(url){
		var node=document.getElementById("fr_content");
		node.setAttribute("src", url);
	}
	
	</script>
	<jsp:include page="/jsp/title.jsp" flush="true" />
	<%!
		LeftNavItem item_0=new LeftNavItem("http://www.androidauthority.com/samsung-gear-s2-ios-beta-launch-712488/","android","android_chapter_1");
		LeftNavItem item_1=new LeftNavItem("http://www.androidauthority.com/first-lg-v20-picture-evleaks-712422/","android","android_chapter_2");
		LeftNavItem item_2=new LeftNavItem("http://www.androidauthority.com/xiaomi-redmi-note-4-unveiled-china-price-specs-features-712411/","android","android_chapter_3");
		LeftNavItem item_3=new LeftNavItem("http://www.androidauthority.com/honor-8-concludes-global-tour-paris-launches-europe-712341/","android","android_chapter_4");
		LeftNavItem item_4=new LeftNavItem("http://www.androidauthority.com/android-nougat-nexus-5-mod-712384/","android","android_chapter_5");
		LeftNavItem item_5=new LeftNavItem("http://www.androidauthority.com/salt-lake-city-google-fiber-712373/","android","android_chapter_6");
		LeftNavItem item_6=new LeftNavItem("http://www.androidauthority.com/drive-gets-notifications-homescreen-shortcuts-ics-gets-warning-712202/","android","android_chapter_7");
		LeftNavItem item_7=new LeftNavItem("http://www.androidauthority.com/project-fis-wifi-assistant-serve-nexus-devices-soon-712319/","android","android_chapter_8");
		LeftNavItem item_8=new LeftNavItem("http://www.androidauthority.com/bo-collaboration-lg-audio-v20-712312/","android","android_chapter_9");
		LeftNavItem item_9=new LeftNavItem("http://www.androidauthority.com/pokemon-go-update-appraise-712327/","android","android_chapter_10");

		
	%>
	<!--导航条-->
	<ul id=nav_container >
			<li class=li_normal><a class=nav_active id=android onClick="refreshNavigator('android')">Android</a></li>
			<li class=li_normal><a class=nav_normal id=java onClick="refreshNavigator('java')" >Java</a></li>
			<li class=li_normal><a class=nav_normal id=node.js onClick="refreshNavigator('node.js')">Node.js</a></li>
			<li class=li_normal><a class=nav_normal id=go onClick="refreshNavigator('go')">Go</a></li>
			<li class=li_normal><a class=nav_normal id=groovy onClick="refreshNavigator('groovy')"> Groovy</a></li>
			<li class=li_normal><a class=nav_normal id=linux onClick="refreshNavigator('linux')">Linux</a></li>
			<li class=li_normal><a class=nav_normal id=html onClick="refreshNavigator('html')">Html</a></li>
			<li class=li_normal><a class=nav_normal id=css onClick="refreshNavigator('css')">Css</a></li>
			<li class=li_normal><a class=nav_normal id=java_script onClick="refreshNavigator('java_script')">JavaScript</a></li>
			
	</ul>
	<!-- 左边菜单 -->
	<ul id=left_navigator>
		<li id=left_nav_0 class=lef_nav onclick="leftNavClick('<%= item_0.getUrl() %>')"><%= item_0.getConent() %></li>
		<li id=left_nav_1 class=lef_nav onclick="leftNavClick('<%= item_1.getUrl() %>')"><%= item_1.getConent() %></li>
		<li id=left_nav_2 class=lef_nav onclick="leftNavClick('<%= item_2.getUrl() %>')"><%= item_2.getConent() %></li>
		<li id=left_nav_3 class=lef_nav onclick="leftNavClick('<%= item_3.getUrl() %>')"><%= item_3.getConent() %></li>
		<li id=left_nav_4 class=lef_nav onclick="leftNavClick('<%= item_4.getUrl() %>')"><%= item_4.getConent() %></li>
		<li id=left_nav_5 class=lef_nav onclick="leftNavClick('<%= item_5.getUrl() %>')"><%= item_5.getConent() %></li>
		<li id=left_nav_6 class=lef_nav onclick="leftNavClick('<%= item_6.getUrl() %>')"><%= item_6.getConent() %></li>
		<li id=left_nav_7 class=lef_nav onclick="leftNavClick('<%= item_7.getUrl() %>')"><%= item_7.getConent() %></li>
		<li id=left_nav_8 class=lef_nav onclick="leftNavClick('<%= item_8.getUrl() %>')"><%= item_8.getConent() %></li>
		<li id=left_nav_9 class=lef_nav onclick="leftNavClick('<%= item_9.getUrl() %>')"><%= item_9.getConent() %></li>
	
	</ul>

	
	<p id="content"   >
	<iframe  id=fr_content width="100%" height="800px"src="https://www.android.com/">
	</iframe>
	</p>
	<div>
	<a href="/GeekWeb/hero">Go...</a>
	</div>
	

</body>
</html>
