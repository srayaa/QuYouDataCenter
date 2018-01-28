<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>趣友欢乐游戏</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<!-- The styles -->
<link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
<link href="css/charisma-app.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet" type="text/css" />
　<link rel = "Shortcut Icon" href=img/quyou.png>
</head>

<body>
	<!-- navbar starts -->
	<div class="navbar navbar-default" role="navigation">

		<div class="navbar-inner">
			<button type="button" class="navbar-toggle pull-left animated flip">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"> <span
				style="font-size: 20px;font-weight: bold">趣友欢乐游戏</span></a>
			<!-- user dropdown starts -->
			<div class="btn-group pull-right">
				<button class="btn btn-default dropdown-toggle"
					onclick="location.href='exit.do'">
					<i class="glyphicon glyphicon-user"></i><span
						class="hidden-sm hidden-xs"> 退出</span>
				</button>
			</div>
			<!-- user dropdown ends -->
		</div>
	</div>
	<div class="ch-container">
		<div class="row">

			<!-- left menu starts -->
			<div class="col-sm-2 col-lg-2">
				<div class="sidebar-nav">
					<div class="nav-canvas">
						<div class="nav-sm nav nav-stacked"></div>
						<ul class="nav nav-pills nav-stacked main-menu">
							<li class="nav-header">Main</li>
							<li><a class="ajax-link" href="index.do"><i
									class="glyphicon glyphicon-home"></i><span> 我的信息</span></a></li>
							<c:if test="${sessionScope.userType==0}">
								<li><a class="ajax-link" href="mainproxy.do"><i
										class="glyphicon glyphicon-eye-open"></i><span>总代管理</span></a></li>
							</c:if>
							<c:if
								test="${sessionScope.userType==1||sessionScope.userType==0}">
								<li><a class="ajax-link" href="proxy.do"><i
										class="glyphicon glyphicon-edit"></i><span>代理管理</span></a></li>
							</c:if>
							<li><a class="ajax-link" href="cardRecord.do"><i
									class="glyphicon glyphicon-list-alt"></i><span>售卡记录</span></a></li>
							<li><a class="ajax-link" href="playerMag.do"><i
									class="glyphicon glyphicon-font"></i><span>玩家管理</span></a></li>
							<!-- 	<li><a class="ajax-link" href="#"><i
									class="glyphicon glyphicon-picture"></i><span>通知管理</span></a></li> -->
							<li><a class="ajax-link" href="editPassword.jsp"><i
									class="glyphicon glyphicon-align-justify"></i><span>修改密码</span></a></li>
							<!-- <li class="accordion"><a href="#"><i
									class="glyphicon glyphicon-plus"></i><span>修改IP</span></a>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#">Child Menu 1</a></li>
									<li><a href="#">Child Menu 2</a></li>
								</ul></li> -->
						</ul>
					</div>
				</div>
			</div>
			<!--/span-->


			<!-- left menu ends -->

			<noscript>
				<div class="alert alert-block col-md-12">
					<h4 class="alert-heading">Warning!</h4>

					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>

			<div id="content" class="col-lg-10 col-sm-10">
				<!-- content starts -->
				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<!-- box-header well Start -->
							<div class="box-header well">
								<h2 style="font-size: 20px">
									<i class="glyphicon glyphicon-info-sign"></i>我的信息
								</h2>

								<!-- <div class="box-icon">
									<a href="#" class="btn btn-setting btn-round btn-default"><i
										class="glyphicon glyphicon-cog"></i></a> <a href="#"
										class="btn btn-minimize btn-round btn-default"><i
										class="glyphicon glyphicon-chevron-up"></i></a> <a href="#"
										class="btn btn-close btn-round btn-default"><i
										class="glyphicon glyphicon-remove"></i></a>
								</div> -->
							</div>
							<!-- box-header well End -->
							<!--box-content row Start  -->
							<div class="box-content row">
								<div class="col-lg-7 col-md-12">
									<form class="testform" method="post">
										<table class="table table-bordered table-striped responsive"
											style="position:absolute; top:30px; left:50px;">
											<tr>
												<td>ID：</td>
												<td><input type="text" name="username" id="username"
													value="${userId}"
													style="border:1px solid #b4b4b4;width:180px"
													readonly="readonly" /></td>
											</tr>

											<tr>
												<td>名称：</td>
												<td><input type="text" name="username" id="username"
													value="${username}"
													style="border:1px solid #b4b4b4;width:180px"
													readonly="readonly" /></td>
											</tr>

											<tr>
												<td>限时房卡数量：</td>
												<td><input type="text" name="cardLCount"
													value="${cardLCount}"
													style="border:1px solid #b4b4b4;width:180px"
													readonly="readonly" /></td>
											</tr>
											<tr>
												<td>限时时间：</td>
												<td><fmt:formatDate value="${cardLTime}"
														pattern="yyyy-MM-dd HH:mm:ss" /></td>
											</tr>

											<tr>
												<td>永久房卡数量：</td>
												<td><input type="text" name="cardFCount"
													value="${cardFCount}"
													style="border:1px solid #b4b4b4;width:180px"
													readonly="readonly" /></td>
											</tr>
											<tr>
												<td>角色：</td>
												<td><input type="text" name="roleType"
													value="${roleType}"
													style="border:1px solid #b4b4b4;width:180px"
													readonly="readonly" /></td>
											</tr>
										</table>
									</form>
								</div>
							</div>
							<!--box-content row End  -->
						</div>
					</div>
				</div>
				<!-- content ends -->
			</div>
		</div>
		<!--/fluid-row-->

		<!-- Ad, you can remove it -->

		<!-- Ad ends -->

		<hr>


		<footer class="fixed-bottom">
		<p class="col-md-9 col-sm-9 col-xs-12 copyright">
			&copy; <a href="#" target="_blank">QuYou GoPlayUS Beijing
				Technology Co., Ltd </a> 2007 ~ 2018
		</p>


		</footer>

	</div>

	</div>
	<!--/.fluid-container-->

	<!-- external javascript -->

	<!-- library for cookie management -->
	<!-- data table plugin -->
	<!-- notification plugin -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.cookie.js"></script>
<script src="js/charisma.js" type="text/javascript"></script>


</body>
</html>
