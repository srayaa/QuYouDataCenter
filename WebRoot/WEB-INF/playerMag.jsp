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
							<!--   <li><a class="ajax-link" href="#"><i class="glyphicon glyphicon-picture"></i><span>通知管理</span></a>
                        </li> -->
							<li><a class="ajax-link" href="editPassword.jsp"><i
									class="glyphicon glyphicon-align-justify"></i><span>修改密码</span></a></li>
							<!--  <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span>修改IP</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Child Menu 1</a></li>
                                <li><a href="#">Child Menu 2</a></li>
                            </ul>
                        </li> -->

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
									<i class="glyphicon glyphicon-minus"></i>玩家列表
								</h2>

								<!--  <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                            class="glyphicon glyphicon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div> -->
							</div>
							<div class="box-content">
								<table class="table table-bordered table-striped responsive">
									<div style="position: absolute;right=200px;top:10px;width: 10%">
										<form action="playerMagForOne.do" id="searchOne"
											class="testform" method="post">
											<td>Search：</td>
											<td><input type="number" value="" name="userId"
												id="userId" style="border:1px solid #b4b4b4;width:180px"
												onkeydown="javascript:if(event.keyCode==13) search_one();" />
												<input type=button value="查找"
												style="width:80px; font-family:宋体;background-color:#27C24C;color: white;font-size:12px;padding:5px 5px 5px 5px;border:none;"
												onclick="search_one()";></td>
										</form>
									</div>
									<tbody>
										<table id="tablex-7">
											<thead>
												<tr>
													<th>玩家ID</th>
													<th>昵称</th>
													<th>国家</th>
													<th>省</th>
													<th>性别</th>
													<th>最后登录时间</th>
													<th>房卡</th>
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
																<td style="font-weight: normal;">${item.country}</td>
																<td style="font-weight: normal;">${item.province}</td>
																<td style="font-weight: normal;"><c:choose>
																		<c:when test="${item.sex==1}">男</c:when>
																		<c:otherwise>女</c:otherwise>
																	</c:choose></td>
																<td style="font-weight: normal;"><fmt:formatDate
																		value="${item.lastVisitDate}"
																		pattern="yyyy-MM-dd HH:mm:ss" /></td>
																<td style="font-weight: normal;">${item.cardCount}</td>
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






									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->
				<!--/ä¸»ç¨åºæ¡æ¶ç»æ-->

				<div class="row">

					<!--/span-->


					<!--/span-->

				</div>
				<!--/row-->



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

	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/charisma.js" type="text/javascript"></script>
	<script src="js/jquery.noty.js"></script>
	<script language="javascript">  
    function search_one(){  
   document.getElementById("searchOne").submit();
    }  
    function addCardCount(id){  
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
  form1.action = "customerAddCard.do"; 
  // 对该 form 执行提交 
  form1.submit(); 
  // 删除该 form 
  document.body.removeChild(form1); 
    }
    
    
    </script>

</body>
</html>

