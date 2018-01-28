<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        http://usman.it
        http://twitter.com/halalit_usman
        ===
    -->
<title>趣友欢乐游戏</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<!-- The styles -->
<link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">

<link href="css/charisma-app.css" rel="stylesheet">
<!-- <link href='bower_components/fullcalendar/dist/fullcalendar.css'
	rel='stylesheet'>
<link href='bower_components/fullcalendar/dist/fullcalendar.print.css'
	rel='stylesheet' media='print'>
<link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
<link href='bower_components/colorbox/example3/colorbox.css'
	rel='stylesheet'>
<link href='bower_components/responsive-tables/responsive-tables.css'
	rel='stylesheet'>
<link
	href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css'
	rel='stylesheet'>
<link href='css/jquery.noty.css' rel='stylesheet'>
<link href='css/noty_theme_default.css' rel='stylesheet'>
<link href='css/elfinder.min.css' rel='stylesheet'>
<link href='css/elfinder.theme.css' rel='stylesheet'>
<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='css/uploadify.css' rel='stylesheet'>
<link href='css/animate.min.css' rel='stylesheet'> -->
<link href='css/styles.css' rel='stylesheet'>



</head>
<!-- topbar starts -->
<body>

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
	<!-- topbar ends -->


	<!--/ä¿ççå¯¼èªæ å¼å§-->
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
								<li><a class="ajax-link" id="mainproxy" href="mainproxy.do"><i
										class="glyphicon glyphicon-eye-open"></i><span>总代管理</span></a></li>
							</c:if>
							<c:if
								test="${sessionScope.userType==1||sessionScope.userType==0}">
								<li><a class="ajax-link" href="proxy.do"><i
										class="glyphicon glyphicon-edit"></i><span>代理管理</span></a></li>
							</c:if>
							<li><a class="ajax-link" href="cardRecord.do"><i
									class="glyphicon glyphicon-list-alt"></i><span>售卡记录</span></a></li>
							<li><a class="ajax-link" href="playerMag.do"><i
									class="glyphicon glyphicon-font"></i><span>玩家管理</span></a></li>
							<!-- <li><a class="ajax-link" href="#"><i
									class="glyphicon glyphicon-picture"></i><span>通知管理</span></a></li> -->
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
				<!--/å¯¼èªæ ç»æ-->

				<!--/ä¸»ç¨åºæ¡æ¶-->
				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<div class="box-header well" data-original-title="">
								<h2 style="font-size: 20px">
									<i class="glyphicon glyphicon-asterisk"></i>会员列表
								</h2>

								<div class="box-icon" style="position: absolute;right: 300px">
									<a href="proxyRecommend.jsp"
										class="btn btn-setting btn-round btn-default"><i
										class="glyphicon glyphicon-plus"></i>添加代理</a>
									<!--   <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a> -->
								</div>
							</div>
							<div class="box-content">
								<table class="table table-bordered table-striped responsive">
									<tbody>

										<!-- content -->

										<tr>
											<td>用户ID：</td>
											<td><input type="text" name="userId" value="${userId}"
												style="border:1px solid #b4b4b4;width:180px"
												disabled="disabled" /></td>
											</td>
										</tr>

										<tr>
											<td>用户昵称：</td>
											<td><input type="text" name="username"
												value="${username}"
												style="border:1px solid #b4b4b4;width:180px"
												disabled="disabled" /></td>
										</tr>
										<tr>
											<td>省：</td>
											<td><input type="text" name="province"
												value="${province}"
												style="border:1px solid #b4b4b4;width:180px"
												disabled="disabled" /></td>
										</tr>
										<tr>
											<td>市：</td>
											<td><input type="text" name="city" value="${city}"
												style="border:1px solid #b4b4b4;width:180px"
												disabled="disabled" /></td>
										</tr>
										<tr>
											<td>现有房卡数量：</td>
											<td><input type="text" name="cardCount"
												value="${cardCount}"
												style="border:1px solid #b4b4b4;width:180px"
												disabled="disabled" /></td>
										</tr>

										<form action="sellCardHandle.do" class="testform"
											method="post" onsubmit="return sumbit_sure()">
											<input type="hidden" name="buyerId" value="${userId}"></input>
											<input type="hidden" name="toType" value="1"></input> <input
												type="hidden" name="buyerName" value="${username}"></input>
											<tr>
											<td>售卖类型：</td>
											<td><input type="radio" name="sellType" value="0" checked>售卖</input>
												 <input type="radio" name="sellType" value="1">赠送</td>
										</tr>
											<tr>
												<td>增加房卡数：</td>
												<td><input type="number" id="addCardCount" name="addCardCount" value="0"
													style="border:1px solid #b4b4b4;width:180px" /></td>
											</tr>
											<tr>
												<td>入账金额：</td>
												<td><input type="number" id="income" name="income" value="0"
													style="border:1px solid #b4b4b4;width:180px" /></td>
											</tr>
											<tr>
												<td colspan="2" style="text-align:center"><br /> <input
													type="submit" value="保存" /></td>
											</tr>
										</form>
										<!-- content  end -->





									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!--/span-->

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
				&copy; <a href="#" target="_blank">QuYou GoPlayUS Beijing Technology Co., Ltd
</a>
				2007 ~ 2018
			</p>

			
		</footer>

	</div>
	<!--/.fluid-container-->
	</div>
	<!-- external javascript -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- data table plugin -->
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<script language="javascript">
		function addCardCount(id) {
			// 创建一个 form 
			var form1 = document.createElement("form");
			form1.id = "form1";
			form1.name = "form1";
			// 添加到 body 中 
			document.body.appendChild(form1);
			// 创建一个输入 
			var input = document.createElement("input");
			// 设置相应参数 
			input.type = "text";
			input.name = "userId";
			input.value = id;
			// 将该输入框插入到 form 中 
			form1.appendChild(input);
			// form 的提交方式 
			form1.method = "POST";
			// form 提交路径 
			form1.action = "sell.do";
			// 对该 form 执行提交 
			form1.submit();
			// 删除该 form 
			document.body.removeChild(form1);
		}
		function editInfo(id) {
	
			// 创建一个 form 
			var form1 = document.createElement("form");
			form1.id = "form1";
			form1.name = "form1";
			// 添加到 body 中 
			document.body.appendChild(form1);
			// 创建一个输入 
			var input = document.createElement("input");
			// 设置相应参数 
			input.type = "text";
			input.name = "userId";
			input.value = id;
			// 将该输入框插入到 form 中 
			form1.appendChild(input);
			// form 的提交方式 
			form1.method = "POST";
			// form 提交路径 
			form1.action = "editInfo.do";
			// 对该 form 执行提交 
			form1.submit();
			// 删除该 form 
			document.body.removeChild(form1);
	
		}
		function sumbit_sure() {
		  var p0 = document.getElementById("addCardCount").value; //获取密码框的值
		  var p1 = document.getElementById("income").value; //获取密码框的值
		  if(p0<0||p1<0){
		     alert("请输入正确的房卡数和金额");
		     return false;
		  }
			if (window.confirm("确定要提交?")) {
				return true;
			}
			return false;
	
		}
	</script>
</body>
</html>

