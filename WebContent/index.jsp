<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body onload="refreshNavigator('android')">
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
	 item={id:"01",url:"http://www.w3schools.com/js/js_object_definition.asp",content:"JAVASCRIPT"}
	function loadingNavigatorItems(name,cnt){
		var nodes=document.getElementsByClassName("left_nav");
		var temp=10-nodes.length;
		for(var i=0;i<temp;i++){
			var li=document.createElement("LI");
			var text=document.createTextNode(name+"第"+i+"章");
			var navigator=document.getElementById("left_navigator");
			
			li.class="left_nav";
			li.style.listStyleType="none";
			li.style.marginLeft="0";
			li.appendChild(text);
			navigator.appendChild(li);
		}
	}
	function render(node){node.style.backgroundColor="red"}
	
	</script>
	<jsp:include page="/jsp/title.jsp" flush="true" />
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

	
	<p id="content"   >
	<iframe  width="100%" height="800px"src="https://www.android.com/">
	</iframe>
	</p>
	<div>
	<a href="/GeekWeb/hero">Go...</a>
	</div>
	

</body>
</html>
