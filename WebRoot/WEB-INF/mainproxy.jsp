<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link href="css/styles.css" rel="stylesheet" type="text/css" />

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
				<ul class="dropdown-menu">
					<li><a href="#">Profile</a></li>
					<li class="divider"></li>
					<li><a href="login.html">Logout</a></li>
				</ul>
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
									<i class="glyphicon glyphicon-book"></i>总代管理列表
								</h2>

								<div class="box-icon" style="position: absolute;right: 300px">
									<input type=button value="添加总代"
										style=" font-weight:normal; font-family:宋体;background-color:#7264BA;color: white;font-size:12px;padding:8px 8px 8px 8px;border:none;margin-bottom: 20px"
										onclick="location.href='mainProxyRecommend.jsp'";>
									<!-- <form action="login" class="testform" method="post">
										<input type="submit" value="登录" style="position: absolute;right: 200px"/>
								</form> -->
									<!-- <a href="#"
										class="btn btn-minimize btn-round btn-default"><i
										class="glyphicon glyphicon-chevron-up"></i></a> 
									<a href="#"
										class="btn btn-close btn-round btn-default"><i
										class="glyphicon glyphicon-remove"></i></a> -->
								</div>
							</div>




							<div class="box-content">
								<table class="table table-bordered table-striped responsive">
									<div style="position: absolute;right=200px;top:10px;width: 10%">
										<form action="mainProxyOne.do" id="searchOne" class="testform"
											method="post">
											<td>Search：</td>
											<td><input type="text" value="" name="userId"
												id="userId" style="border:1px solid #b4b4b4;width:180px"
												onkeydown="javascript:if(event.keyCode==13) search_one();" />
												<input type=button value="查找"
												style="font-weight:normal; width:80px; font-family:宋体;background-color:#27C24C;color: white;font-size:12px;padding:5px 5px 5px 5px;border:none;"
												onclick="search_one()";></td>
										</form>
									</div>
									<tbody>

										<table id="tablex-7">
											<thead>
												<tr>
													<th>ID</th>
													<th>代理名称</th>
													<th>代理密码</th>
													<th>地址</th>
													<th>联系人</th>
													<th>联系电话</th>
													<th>紧急联系人</th>
													<th>紧急联系电话</th>
													<th>限时房卡数</th>
													<th>永久房卡数</th>
													<th>创建时间</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${empty list}">
														<tr>
															<td colspan="6">列表为空</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list}" varStatus="i" var="item">
															<tr>
																<td style="font-weight: normal;">${item.userId}</td>
																<td style="font-weight: normal;">${item.username}</td>
																<td style="font-weight: normal;">${item.password}</td>
																<td style="font-weight: normal;">${item.address}</td>
																<td style="font-weight: normal;">${item.contactName}</td>
																<td style="font-weight: normal;">${item.contactPhone}</td>
																<td style="font-weight: normal;">${item.emergencyContact}</td>
																<td style="font-weight: normal;">${item.emergencyPhone}</td>
																<td style="font-weight: normal;">${item.cardLCount}</td>
																<td style="font-weight: normal;">${item.cardFCount}</td>
																<td style="font-weight: normal;"><fmt:formatDate
																		value="${item.createTime}"
																		pattern="yyyy-MM-dd HH:mm:ss" /></td>
																<td><input type="button"
																	onclick="addCardCount(${item.userId})"
																	style="font-weight:normal; font-family:宋体;background-color:#7264BA;color: white;font-size:12px;padding:5px 5px 5px 5px;border:none;"
																	value="增加房卡" /></td>
																<%--   <c:if test="${i.index % 2 == 0}" >  
                <tr align="center" class="foreach_tr1">  
            </c:if>  
            <c:if test="${i.index % 2 == 1}">  
                <tr align="center" class="foreach_tr2">  
            </c:if>   --%>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>


										<c:choose>
											<c:when test="${page.totalPage <= 6}">
												<c:set var="begin" value="1" />
												<c:set var="end" value="${page.totalPage}" />
											</c:when>
											<%--页数超过了6页--%>
											<c:otherwise>
												<c:set var="begin" value="${page.currentPage - 1}" />
												<c:set var="end" value="${page.currentPage + 3}" />
												<%--如果begin减1后为0,设置起始页为1,最大页为6--%>
												<c:if test="${begin -1 <= 0}">
													<c:set var="begin" value="1" />
													<%-- <c:set var="end" value="6"/>  --%>
												</c:if>
												<%--如果end超过最大页,设置起始页=最大页-5--%>
												<c:if test="${end > page.totalPage}">
													<c:set var="begin" value="${page.totalPage - 5}" />
													<c:set var="end" value="${page.totalPage}" />
												</c:if>
											</c:otherwise>
										</c:choose>
										<%--遍历--%>
										<c:if test="${page!=null&&page.totalPage>1}">
											<ul style="position: absolute;z-index: 2;text-align: center;">
												<c:if test="${page.currentPage!=1}">
													<li style="display: inline-block;text-align: center;"><a
														href="#" onclick="toPage(-1)">上一页</a></li>
												</c:if>
												<c:if test="${page.currentPage==1}">
													<li style="display: inline-block;text-align: center;"><a
														href="#">首页</a></li>
												</c:if>
												<c:forEach var="i" begin="${begin}" end="${end}">
													<%--当前页,选中--%>
													<c:choose>
														<c:when test="${i == page.currentPage}">
															<li style="display: inline-block;text-align: center;"><h4
																	style="display:inline-block; width:30px; text-align:center;color: black;">${i}</h4></li>
														</c:when>
														<%--不是当前页--%>
														<c:otherwise>
															<li style="display: inline-block;text-align: center;"><a
																href="#" onclick="toPage(${i})"
																style="display:inline-block; width:30px; text-align:center">${i}</a>
															</li>
														</c:otherwise>
													</c:choose>
												</c:forEach>
												<c:if test="${page.currentPage!=page.totalPage}">
													<li style="display: inline-block;text-align: center;"><a
														href="#" onclick="toPage(-2)">下一页</a></li>
												</c:if>
												<c:if test="${page.currentPage==page.totalPage}">
													<li style="display: inline-block;text-align: center;"><a
														href="#">尾页</a></li>
												</c:if>
											</ul>
										</c:if>



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
			&copy; <a href="#" target="_blank">QuYou GoPlayUS Beijing
				Technology Co., Ltd </a> 2007 ~ 2018
		</p>


		</footer>

	</div>
	<!--/.fluid-container-->
	</div>
	<!-- external javascript -->

	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/charisma.js" type="text/javascript"></script>
	<script src="js/jquery.noty.js"></script>
	<script language="javascript">
		function search_one() {
			var userId = document.getElementById("userId").value
			if (userId == null || userId == "") {
				alert("请输入要查询的代理id");
				return;
			}
			document.getElementById("searchOne").submit();
		}
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
			input.name = "buyerId";
			input.value = id;
			// 将该输入框插入到 form 中 
			form1.appendChild(input);
			// form 的提交方式 
			form1.method = "POST";
			// form 提交路径 
			form1.action = "mainProxyAddCard.do";
			// 对该 form 执行提交 
			form1.submit();
			// 删除该 form 
			document.body.removeChild(form1);
		}
		function toPage(toPage) {
			if (toPage == -1) {
				toPage = "${page.currentPage}" - 1
			} else if (toPage == -2) {
				toPage = parseInt("${page.currentPage}") + 1
			}
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
			input.name = "toPage";
			input.value = toPage;
			//加入完毕
			// 将该输入框插入到 form 中 
			form1.appendChild(input);
			// form 的提交方式 
			form1.method = "POST";
			// form 提交路径 
			form1.action = "mainproxy.do";
			// 对该 form 执行提交 
			form1.submit();
			// 删除该 form 
			document.body.removeChild(form1);
			return false;
		}
	</script>

</body>
</html>

