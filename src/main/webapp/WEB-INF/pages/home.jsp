<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CodingLion Resume</title>
<link href="${pageContext.request.contextPath}/resources/resume.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/header.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/container.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/footer.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

<style type="text/css">
	#container{
		width:100%;
		height: 100%;
		overflow: hidden;
	}
  	#container #mainframe{
		width: 100%;
		height:100%;
		overflow: hidden;
	}  
</style>
<script>
	$(function(){
		
		/* $("#contained").load(function(){
			var containerHeight = $("div.page-content",window.frames[0].document).height();
			$("#container").height(containerHeight);
		}); */
		
	/* 	$(window.parent.document).find("#main").load(function(){
			var main = $(window.parent.document).find("#main");
			var thisheight = $(document).height()+30;
			main.height(thisheight);
		}); */
		
	   $("#mainframe").load(function(){
			var mainheight = $(this).contents().find("body").height()+30;
			$(this).height(mainheight);
		});
	});
</script>
</head>
<body>
	<div class="g-hd">
		<div class="hdbg"></div>
		<div class="hdbg2"></div>
		<div class="m-about">

			<div class="logo">
				<a href="/"><img src="${pageContext.request.contextPath}/resources/redlion.png"></a>
			</div>

			<h1 class="tit">
				<a href="/">CodingLion</a>
			</h1>

			<div class="about">最爱湖东行不足,绿杨阴里白沙堤</div>
		</div>
		<div class="m-nav">
			<!--<div id="footer">-->
			<!--<ul class="contact">-->
			<!--<li><a class="fa fa-weibo solo" href="http://weibo.com/2103167411"><span>weibo</span></a></li>-->
			<!--<li><a class="fa fa-phone solo" href="#"><span>phone</span></a></li>-->
			<!--<li><a class="fa fa-comments solo" href="#"><span>message</span></a></li>-->
			<!--<li><a class="fa fa-envelope-o solo" href="#"><span>mail</span></a></li>-->
			<!--<li><a class="fa fa-github solo" href="https://github.com/chenyakun"><span>github</span></a></li>-->
			<!--</ul>-->
			<!--</div>-->
			<!--<div class="navc">-->
			<!--<div class="list">-->
			<!--<ul class="listc">-->
			<!--<li><a href="http://www.lofter.com/message/codinglion" rel="nofollow">博客</a></li>-->
			<!--</ul>-->
			<!--<ul class="moreList">-->
			<!--<li class="more" style="display:none;"><a href="#">博客</a></li>-->
			<!--</ul>-->
			<!--</div>-->
			<!--<div class="sch">-->
			<!--<form method="get" action="/search">-->
			<!--<input type="text" name="q" value="输入搜索内容" onfocus="if(this.value='输入搜索内容'){this.value='';}"-->
			<!--onblur="if(!this.value){this.value='输入搜索内容';}">-->
			<!--</form>-->
			<!--</div>-->
			<!--</div>-->
		</div>
	</div>

	<div id="container">
		<!--简介-->
		<iframe id="mainframe" src="${pageContext.request.contextPath}/text/list">
		</iframe>
	</div>

	<div id="footer">
		<ul class="contact">
			<li><a class="fa fa-weibo solo"
				href="http://weibo.com/2103167411"><span>weibo</span></a></li>
			<li><a class="fa fa-phone solo" href="#"><span>phone</span></a></li>
			<li><a class="fa fa-comments solo" href="#"><span>message</span></a></li>
			<li><a class="fa fa-envelope-o solo" href="#"><span>mail</span></a></li>
			<li><a class="fa fa-github solo"
				href="https://github.com/chenyakun"><span>github</span></a></li>
		</ul>
	</div>

</body>
</html>