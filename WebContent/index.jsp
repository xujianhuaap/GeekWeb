<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#nav_container {
	background-color: #919191;
	width:100%;
	margin:0px;
	padding:0;
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
}
li a.nav_normal {
	color: #000;
    background-color: #919191;
}
li a.nav_active {
    background-color: #4CAF50;
    color: white;
}
li a:hover {
    background-color: #4CAF50;
    color: white;
}
/**/
#left_navigator{
	padding-top: 10px;
	padding-left: 0px;
	margin-top: 0px;
	width:100px;
	background-color: #F5F5F5;
}
</style>
<title>学习笔记</title>
</head>
<body>
	<script type="text/javascript">
	//顶部导航
		function refreshNavigator(id){
			
			refreshElemetns("nav_normal",id)
			refreshElemetns("nav_active",id)
			loadingNavigatorItems(id, 10);
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
	function loadingNavigatorItems(name,cnt){
		var navigator=document.getElementById("left_navigator");
		for(var i=0;i<cnt;i++){
			var li=document.createElement("LI");
			var text=document.createTextNode(name+"第"+i+"章");
			li.id=name+i;
			li.style.listStyleType="none";
			li.style.marginLeft="0";
			li.appendChild(text)
			navigator.appendChild(li);
		}
	}
	</script>
	<jsp:include page="/jsp/title.jsp" flush="true" />
	<div>
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

	</ul>
	</div>
	<div>
	<a href="/GeekWeb/hero">Go...</a>
	</div>
	

</body>
</html>
