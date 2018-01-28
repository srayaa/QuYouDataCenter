<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<title>添加代理</title>
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
						  <a class="w-clearfix w-inline-block nav-menu-link"href="addproxy_mb.jsp" data-load="1">
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
						</a>
						 <a class="w-clearfix w-inline-block nav-menu-link"
							href="recs.jsp" data-load="1">
							<div class="icon-list-menu">
								<div class="icon ion-ios-paper-outline" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles">售卡记录</div>
						</a>
						<a class="w-clearfix w-inline-block nav-menu-link"
							href="repass.jsp" data-load="1">
							<div class="icon-list-menu" >
								<div class="icon ion-locked" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles">修改密码</div>
						</a> 
						 <a class="w-clearfix w-inline-block nav-menu-link" href="#" onclick="doLogout()">
							<div class="icon-list-menu">
								<div class="icon ion-android-exit" style="margin-top: 12px"></div>
							</div>
							<div class="nav-menu-titles">退出登录</div>
						</a>
						<div class="separator-bottom"></div>
						<div class="separator-bottom"></div>
						<div class="separator-bottom"></div>
					</nav>
					<div class="wrapper-mask" data-ix="menu-mask"></div>
					<div class="navbar-title">添加代理</div>
					<div class="w-nav-button navbar-button left" id="menu-button"
						data-ix="hide-navbar-icons">
						<div class="navbar-button-icon icon ion-navicon-round"
							style="font-size:30px;"></div>
					</div>
				</div>
			</div>
			<div class="body padding">
				<div class="w-form" style="padding-top:40px;">
					<form id="email-form" name="email-form" data-name="Email Form"
						action="#">
						<div>
							<label class="label-form" for="ori-pass-field">名称</label> <input
								class="w-input input-form" id="username" type="text"
								required="required">
							<div class="separator-fields"></div>
						</div>
						<div>
							<label class="label-form" for="new-pass-field">地址</label> <input
								class="w-input input-form" id="address" type="text"
								required="required">
							<div class="separator-fields"></div>
						</div>
						<div>
							<label class="label-form" for="new-pass2-field">联系人</label> <input
								class="w-input input-form" id="contactName" type="text"
								required="required">
							<div class="separator-fields"></div>
						</div>
						<div>
							<label class="label-form" for="new-pass2-field">联系电话</label> <input
								class="w-input input-form" id="contactPhone" type="text"
								required="required">
							<div class="separator-fields"></div>
						</div>
						<div>
							<label class="label-form" for="new-pass2-field">推荐人</label> <input
								class="w-input input-form" id="recommendPerson" type="text"
								required="required">
							<div class="separator-fields"></div>
						</div>
						<input class="w-button action-button" type="button" value="保存"
							data-wait="请稍候.." onclick="save()">
					</form>
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
	
		function save() {
			doTimeOut();var oriPass = $('#ori-pass-field').val();
			var username = $('#username').val();
			var address = $('#address').val();
			var contactName = $('#contactName').val();
			var contactPhone = $('#contactPhone').val();
			var recommendPerson = $('#recommendPerson').val();
			if (username==""||address==""||contactName==""||contactPhone==""||recommendPerson=="") {
				return alert('请填入完整的信息');
			}
			var url = "/addproxyMb.do";
			doPostWithValidate(url, {
				username : username,
				address : address,
				contactName : contactName,
				contactPhone : contactPhone,
				recommendPerson : recommendPerson
			}, function(response) {
				if (response.status == 0) {
					alert('修改成功');gotoHtml('/add.jsp');
				} else {
					alert('修改失败');
				}
			});
		}
	</script>
</body>
</html>