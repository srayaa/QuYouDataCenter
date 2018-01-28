<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
</head>

<body>
	<!-- topbar starts -->
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
						class="hidden-sm hidden-xs">退出</span>
				</button>
			</div>
			<!-- user dropdown ends -->






		</div>
	</div>
	<!-- topbar ends -->
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
							<!-- 	<li><a class="ajax-link"><i
									class="glyphicon glyphicon-picture"></i><span>通知管理</span></a></li> -->
							<li><a class="ajax-link" href="editPassword.jsp"><i
									class="glyphicon glyphicon-align-justify"></i><span>修改密码</span></a></li>
							<!-- 	<li class="accordion"><a><i
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
							<div class="box-header well">
								<h2 style="font-size: 20px">
									<i class="glyphicon glyphicon-info-sign"></i>修改密码
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
							<div class="box-content row">
								<div class="col-lg-7 col-md-12">



									<form action="editPassword.do" name="form1" class="testform"
										method="post" onsubmit="return checkPassword()">
										<table class="table table-bordered table-striped responsive"
											style="position:absolute; top:30px; left:50px;">
											<tr>
												<td>原密码:</td>
												<td><input type="text" name="password" id="password"
													style="border:1px solid #b4b4b4;width:180px" /></td>
											</tr>
											<tr>
												<td>新密码:</td>
												<td><input type="text" name="newPassword"
													id="newPassword"
													style="border:1px solid #b4b4b4;width:180px" /></td>
											</tr>
											<tr>
												<td>重复新密码:</td>
												<div id="msg" style="color:red;"></div>
												<td><input type="text" name="pwd2" id="pwd2"
													style="border:1px solid #b4b4b4;width:180px"
													oninput="checkpwd()" onporpertychange="checkpwd()" /></td>
											</tr>
											<tr>
												<td colspan="2" style="text-align:center"><br /> <input
													type="submit" value="保存" /></td>
											</tr>
										</table>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>




				<!-- content ends -->
			</div>
			<!--/#content.col-md-0-->
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
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/charisma.js" type="text/javascript"></script>
	<script src="js/jquery.noty.js"></script>
	<script type="text/javascript">
		function checkpwd() {
			var p1 = document.form1.pwd1.value; //获取密码框的值
			var p2 = document.form1.pwd2.value; //获取重新输入的密码值
			if (p1 == "") {
				alert("请输入密码！"); //检测到密码为空，提醒输入//
				document.form1.pwd1.focus(); //焦点放到密码框
				return false; //退出检测函数
			} //如果允许空密码，可取消这个条件
	
			if (p1 != p2) { //判断两次输入的值是否一致，不一致则显示错误信息
				document.getElementByIdx_x("msg").innerHTML = "两次输入密码不一致，请重新输入"; //在div显示错误信息
				return false;
			} else {
				//密码一致，可以继续下一步操作 
			document.getElementByIdx_x("msg").innerHTML = "两次输入密码不一致，请重新输入"; //在div显示错误信息
			return false;
			}
		}
		function checkPassword(){
		    var p0 = document.getElementById("password").value; //获取密码框的值
		    var p1 = document.getElementById("newPassword").value; //获取密码框的值
		    var p2 = document.getElementById("pwd2").value; //获取密码框的值
			if(p0==""){
			alert("请输入密码");
			return false;
			}
			if(p1==""){
			alert("请输入新密码");
			return false;
			}
			if(p2==""){
			alert("请再次输入新密码");
			return false;
			}
			if(p1!=p2){
			alert("请保证两次新密码输入相同");
			return false;
			}
			if(p0==p1){
			alert("请保证与原密码不同");
			return false;
			}else{
			if (window.confirm("确定要提交?")) {
				return true;
			}
			return false;
			}
			
		}
	</script>

</body>
</html>
