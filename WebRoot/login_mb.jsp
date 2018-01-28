<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/washington.css">
<script type="text/javascript" src="js/modernizr.js">
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
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<section class="w-section mobile-wrapper">
		<div class="page-content" id="main-stack" data-scroll="0">
			<div class="w-nav navbar"></div>
			<div class="body padding">
				<div class="logo-login"></div>
				<label class="label-form text-centered"
					style="padding-top:20px;padding-bottom:50px;font-size:20px;">
				</label>
				<div class="padding">
					<div class="w-form">
						<form id="submit-form" action="#">
							<div>
								<label class="label-form" for="username-field">用户名</label> <input
									class="w-input input-form" id="username-field" type="number"
									required="required">
								<div class="separator-fields"></div>
							</div>
							<div>
								<label class="label-form" for="password-field">密码</label>
								<div class="w-clearfix block-input-combined">
									<input class="w-input input-form left" id="password-field"
										type="password" data-name="password" required="required">
									<a class="right-input-link" onclick="alert('请联系客服')">忘记密码﹖</a>
								</div>
							</div>
							<div>
								<div class="w-clearfix input-form one-line last">
									<label class="label-form middle"><a href="terms.jsp"
										id="terms" style="border-bottom:dashed 1px red">同意推广协议</a></label>
									<div class="w-clearfix radios-container">
										<div class="w-checkbox w-clearfix checkbox-field">
											<div class="checkbox-handle checked"></div>
											<input class="w-checkbox-input checkbox-input"
												id="checkbox-2" type="checkbox" checked> <label
												class="w-form-label checkbox-label checked" for="checkbox-2"></label>
										</div>
									</div>
								</div>
								<div class="separator-fields"></div>
							</div>
							<input class="w-button action-button" type="button" value="登录"
								data-wait="请稍候.." onclick="login()"> <br>
						</form>
					</div>
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
	
		/* refreshVcode(); */
		function login() {
			if (!$('#checkbox-2').prop('checked')) return alert("请同意用户推广协议");
			console.log("点击监听");
			doLogin($.trim($('#username-field').val()), $.trim($('#password-field').val()), function() {
				console.log("跳转");
				gotoHtml("/add.jsp");
			}, function(d) {
				alert('用户名或密码不正确');
			});
		}
	</script>
</body>
</html>