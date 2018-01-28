<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<title>售卡记录</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/normalize.css">
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/washington.css">
<script type="text/javascript" src="js/modernizr.js">
/********************************************************************/
/*                                                                  */
/*  Copyright (c) 2017 Genesis Mobile                               */
/*                                                                  */
/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
/*  The code may be used for evaluation purposes only.              */
/*  To obtain full rights to the obfuscated code you have to        */
/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
/*                                                                  */
/********************************************************************/
</script>
<script type="text/javascript" src="js/app.js">
/********************************************************************/
/*                                                                  */
/*  Copyright (c) 2017 Genesis Mobile                               */
/*                                                                  */
/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
/*  The code may be used for evaluation purposes only.              */
/*  To obtain full rights to the obfuscated code you have to        */
/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
/*                                                                  */
/********************************************************************/
</script>
<script>
/********************************************************************/
/*                                                                  */
/*  Copyright (c) 2017 Genesis Mobile                               */
/*                                                                  */
/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
/*  The code may be used for evaluation purposes only.              */
/*  To obtain full rights to the obfuscated code you have to        */
/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
/*                                                                  */
/********************************************************************/

	doTimeOut();
</script>
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<section class="w-section mobile-wrapper">
		<div class="page-content" id="main-stack">
			<div class="w-nav navbar" data-collapse="all"
				data-animation="over-left" data-duration="400" data-contain="1"
				data-easing="ease-out-quint" data-no-scroll="1">
				<div class="w-container">
					<nav class="w-nav-menu nav-menu" role="navigation">
						<div class="nav-menu-header">
							<div class="logo"></div>
						</div>
						<a class="w-clearfix w-inline-block nav-menu-link" href="add.jsp"
							data-load="1">
							<div class="icon-list-menu">
								<div class="icon ion-plus-round" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles">添加房卡</div>
						</a>
						<c:if test="${sessionScope.userType==1||sessionScope.userType==0}">
							<a class="w-clearfix w-inline-block nav-menu-link"
								href="addproxy_mb.jsp" data-load="1">
								<div class="icon-list-menu">
									<div class="icon ion-loop" style="margin-top: 12px"></div>
								</div>
								<div class="nav-menu-titles">添加代理</div>
							</a>
						</c:if>
						<c:if test="${sessionScope.userType==1||sessionScope.userType==0}">
							<a class="w-clearfix w-inline-block nav-menu-link"
								href="proxyMag_mb.jsp" data-load="1">
								<div class="icon-list-menu">
									<div class="icon ion-loop" style="margin-top: 12px"></div>
								</div>
								<div class="nav-menu-titles">代理管理</div>
							</a>
						</c:if>
						<a class="w-clearfix w-inline-block nav-menu-link"
							href="buycard.jsp" data-load="1">
							<div class="icon-list-menu">
								<div class="icon ion-card" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles">购卡记录</div>
						</a> <a class="w-clearfix w-inline-block nav-menu-link"
							href="recs.jsp" data-load="1">
							<div class="icon-list-menu">
								<div class="icon ion-ios-paper-outline" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles">售卡记录</div>
						</a>
						 <a class="w-clearfix w-inline-block nav-menu-link"
							href="repass.jsp" data-load="1">
							<div class="icon-list-menu">
								<div class="icon ion-locked" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles">修改密码</div>
						</a> 
						 <a class="w-clearfix w-inline-block nav-menu-link" href="#"
							onclick="doLogout()">
							<div class="icon-list-menu">
								<div class="icon ion-android-exit" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles" >退出登录</div>
						</a>
						<div class="separator-bottom"></div>
						<div class="separator-bottom"></div>
						<div class="separator-bottom"></div>
					</nav>
					<div class="wrapper-mask" data-ix="menu-mask"></div>
					<div class="navbar-title">售卡记录</div>
					<div class="w-nav-button navbar-button left" id="menu-button"
						data-ix="hide-navbar-icons">
						<div class="navbar-button-icon icon ion-navicon-round"
							style="font-size:30px;"></div>
					</div>
				</div>
			</div>
			<div class="body">
				<ul class="list list-messages">
				</ul>
				<div class="grey-header" style="text-align:center" id="loadMore">
					 <a class="w-clearfix w-inline-block small-button" href="#"
						onclick="loadMore()"> 
						
						<div class="icon-button bigger">
							<div class="icon ion-ios-plus-empty"></div>
						</div>
						<div class="text-button">点击加载更多</div>
					 </a> 
				</div>
			</div>
		</div>
		<div class="page-content loading-mask" id="new-stack">
			<div class="loading-icon">
				<div class="navbar-button-icon icon ion-load-d"></div>
			</div>
		</div>
		<div class="shadow-layer"></div>
	</section>
	<script type="text/javascript" src="js/jquery.min.js">
	/********************************************************************/
	/*                                                                  */
	/*  Copyright (c) 2017 Genesis Mobile                               */
	/*                                                                  */
	/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
	/*  The code may be used for evaluation purposes only.              */
	/*  To obtain full rights to the obfuscated code you have to        */
	/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
	/*                                                                  */
	/********************************************************************/
	</script>
	<script type="text/javascript" src="js/framework.js">
	/********************************************************************/
	/*                                                                  */
	/*  Copyright (c) 2017 Genesis Mobile                               */
	/*                                                                  */
	/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
	/*  The code may be used for evaluation purposes only.              */
	/*  To obtain full rights to the obfuscated code you have to        */
	/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
	/*                                                                  */
	/********************************************************************/
	</script>
	<script>
	/********************************************************************/
	/*                                                                  */
	/*  Copyright (c) 2017 Genesis Mobile                               */
	/*                                                                  */
	/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
	/*  The code may be used for evaluation purposes only.              */
	/*  To obtain full rights to the obfuscated code you have to        */
	/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
	/*                                                                  */
	/********************************************************************/
	
		var start = 0;
		var pageSize = 10;
	//	var a=0;
	//	var b=0;
		function load() {
	//	a=Math.round((new Date()).getTime() / 1000)-86400 * 3*start;
	//	 b = a - 86400 * 3;
			doGetWithValidate('/cardRecordInMobile.do?start_index=' + start + '&end_index=' + pageSize, null, function(d) {
				if (d.data && d.data.length) {
					for (var i = 0; i < d.data.length; i++) {
						$('.list-messages').append('<li class="list-message" data-ix="list-item" style="opacity: 1; transform: translateX(0px) translateY(0px); transition: opacity 500ms cubic-bezier(0.23, 1, 0.32, 1), transform 500ms cubic-bezier(0.23, 1, 0.32, 1);">' + '<a class="w-clearfix w-inline-block" href="#"><div class="column-right" style="padding-left: 20px;">' + '  <div class="message-title">' + d.data[i]['sellerName'] + '</div>' + '  <div class="message-text">' + getLocalTime(new Date(d.data[i]['sellTimeInMb'])) + '  用户ID: ' + d.data[i]['buyerId'] + '  售卡: ' + (parseInt(d.data[i]['cardLCount']) + parseInt(d.data[i]['cardFCount'])) + '张' + '</div>' + '</div></a>' + '</li>');
					}
				} else {
					$('.list-messages').append('<li class="list-message" data-ix="list-item" style="opacity: 1; transform: translateX(0px) translateY(0px); transition: opacity 500ms cubic-bezier(0.23, 1, 0.32, 1), transform 500ms cubic-bezier(0.23, 1, 0.32, 1);">' + '<a class="w-clearfix w-inline-block" href="#"><div class="column-right" style="padding-left: 20px;">' + '  <div class="message-title">' + '暂无记录' + '</div>' + '  <div class="message-text"></div>' + '</div></a>' + '</li>');$('#loadMore').hide();
				}
			});
		}
		;load();
		function loadMore() {
			start+=pageSize;load();
		}
	</script>
</body>
</html>
