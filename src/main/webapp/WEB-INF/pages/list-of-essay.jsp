<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="utf-8" ?>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>List of texts</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>




<!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/> -->
<link href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<%-- <link href="${pageContext.request.contextPath}/resources/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/> --%>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<%-- <link href="${pageContext.request.contextPath}/resources/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/> --%>
<link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<%-- <link href="${pageContext.request.contextPath}/resources/assets/css/plugins.css" rel="stylesheet" type="text/css"/> --%>
     <link href="${pageContext.request.contextPath}/resources/assets/css/pages/timeline.css" rel="stylesheet" type="text/css"/>
<%-- <link href="${pageContext.request.contextPath}/resources/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/> --%>
<%-- <link href="${pageContext.request.contextPath}/resources/assets/css/custom.css" rel="stylesheet" type="text/css"/> --%>


<style>

.entry-meta {
	color: #878787;
	float: left;
	margin: 10px 20px 0 0;
	text-align: center;
	width: 130px;
	font-size: 12px;
	line-height: 20px;
}

.post-date {
 	width: 130px;
	height: auto;
	float: left;
	text-align: center;
	margin-left: 30px;
	margin-right: 20px;
	margin-bottom: 15px;
	display: block;
	background: #9dcedf;
	text-shadow: 0px 1px #81bcd1;
	border-radius: 100px;
	-moz-border-radius: 100px;
	-webkit-border-radius: 100px;
	padding: 10px 30px;
	border: 4pt solid #fff;
	-moz-box-shadow: 0 0px 3px #b7b7b7;
	-webkit-box-shadow: 0 0px 3px #b7b7b7;
	box-shadow: 0 0px 3px #b7b7b7;
}

.post-month {
	display: block;
	color: #fff;
}

.post-day {
	font-size: 36px;
	color: #fff;
	margin: 10px 0 15px 0;
}

.post-day, .post-year {
	display: block;
}


.post-year {
	/* background: url("../images/post-meta-divider.png") top repeat-x; */
	color: #fff;
	padding: 10px 0 0 0;
}



/* .page-content {
	margin-left: 0px;
}
 */

</style>

</head>
<body>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<ul class="timeline">
							<c:forEach var="text" items="${texts}">
								<li class="timeline-yellow">
										<div class="timeline-time">
											<%-- <span class="date">
												 ${text.dtime}
											</span>
											<span class="time">
												 18:30 ${text.id}
											</span> --%>
											<aside class="entry-meta">
												<time datetime="${text.dtime}" class="post-date">
													<span class="post-month">三月</span>
													<strong class="post-day">3.29</strong>
													<span class="post-year">2014</span>
												</time>
												<ul>
													<li><span class="title">author:<author>codinglion</author></span>
													</li><li><span class="title">count:100</span></li>
													<li>
														<ul>
															<li><a href="/blog/tag/NOI">NOI</a></li>
														</ul>
													</li>
												</ul>
											</aside>
										</div>
									<!-- 	<div class="timeline-icon">
											<i class="fa fa-trophy"></i>
										</div> -->
										<div class="timeline-body">
											<h2>ICT 2013 20th International Conference</h2>
											<div class="timeline-content">
												<img class="timeline-img pull-left" src="${pageContext.request.contextPath}//resources/assets/img/blog/2.jpg" alt="">
												${text.textContent}
											</div>
											
											
											<!-- <div class="timeline-footer">
												<a href="#" class="nav-link pull-right">
													 Read more <i class="m-icon-swapright m-icon-white"></i>
												</a>
											</div> -->
										</div>
								</li>
							</c:forEach>
					</ul>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<%-- <p><a href="${pageContext.request.contextPath}/index.html">Home page..</a></p> --%>
</body>
</html>