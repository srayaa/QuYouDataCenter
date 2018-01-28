<%@page import="com.utils.ConfigUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>趣友欢乐游戏</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">
<script type="text/javascript" src="js/laydate.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- The styles -->
<link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
<link href="css/charisma-app.css" rel="stylesheet">
<link href='css/styles.css' rel='stylesheet'>
<!-- <style type="text/css">
*{margin:0;padding:0;list-style:none;}
html{background-color:#E3E3E3; font-size:14px; color:#000; font-family:'微软雅黑'}
h2{line-height:30px; font-size:20px;}
a,a:hover{ text-decoration:none;}
pre{font-family:'微软雅黑'}
.box{width:970px; padding:10px 20px; background-color:#fff; margin:10px auto;}
.box a{padding-right:20px;}
.demo1,.demo2,.demo3,.demo4,.demo5,.demo6{margin:25px 0;}
h3{margin:10px 0;}
.layinput{height: 22px;line-height: 22px;width: 150px;margin: 0;}
</style> -->

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
			<a class="navbar-brand"> <!-- <img alt="Charisma Logo" class="hidden-xs"/> -->
				<span style="font-size: 20px;font-weight: bold">趣友欢乐游戏</span></a>
			<!-- <h2 style="font-size: 20px;font-weight: bold;">趣游游戏<h2> -->
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
									<i class="glyphicon glyphicon-euro"></i>售卡记录
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
							<div class="box-content">
								<table class="table table-bordered table-striped responsive">
									<div style="position: absolute;right=200px;top:10px;width: 10%">
										<form action="playerMagForOne.do" id="searchOne"
											class="testform" method="post">
											<td>
												<ul>
													<li class="inline laydate-icon" id="start"
														style="width:200px; margin-right:10px;"><c:choose>
															<c:when test="${startTime==null}">开始日：
         </c:when>
															<c:otherwise>${startTime}
        </c:otherwise>
														</c:choose></li>
												</ul>
											</td>
											<td>
												<ul>
													<li class="inline laydate-icon" id="end"
														style="width:200px;"><c:choose>
															<c:when test="${endTime==null}">结束日：
         </c:when>
															<c:otherwise>${endTime}
        </c:otherwise>
														</c:choose></li>
												</ul>
												</ul>
											</td>
											<td><input type=button value="查找"
												style="width:80px; font-family:宋体;background-color:#27C24C;color: white;font-size:12px;padding:5px 5px 5px 5px;border:none;"
												onclick="searchByTime()";></td>
										</form>
									</div>
									<tbody>

										<table id="tablex-7">
											<thead>
												<tr>
													<th>卖家ID</th>
													<th>卖家名称</th>
													<th>售卖类型</th>
													<th>售卖时间</th>
													<th>入账金额</th>
													<th>售卖/赠送</th>
													<th>赠送房卡数</th>
													<th>售卖房卡数</th>
													<th>买家id</th>
													<th>买家昵称</th>
													<th>备注</th>
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
																<td style="font-weight: normal;">${item.sellerId}</td>
																<td style="font-weight: normal;">${item.sellerName}</td>
																<td style="font-weight: normal;"><c:if
																		test="${item.sellToType==0}">公司-->总代</c:if> <c:if
																		test="${item.sellToType==1}">公司-->代理</c:if> <c:if
																		test="${item.sellToType==2}">公司-->玩家</c:if> <c:if
																		test="${item.sellToType==3}">总代-->代理</c:if> <c:if
																		test="${item.sellToType==4}">总代-->玩家</c:if> <c:if
																		test="${item.sellToType==5}">代理-->代理</c:if> <c:if
																		test="${item.sellToType==6}">代理-->玩家</c:if>
																<td style="font-weight: normal;"><fmt:formatDate
																		value="${item.sellTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
																<td style="font-weight: normal;">${item.income}</td>
																<td style="font-weight: normal;"><c:if
																		test="${item.sellType==0}">售卖</c:if> <c:if
																		test="${item.sellType==1}">赠送</c:if></td>
																<td style="font-weight: normal;">${item.cardLCount}</td>
																<td style="font-weight: normal;">${item.cardFCount}</td>
																<td style="font-weight: normal;">${item.buyerId}</td>
																<td style="font-weight: normal;">${item.buyerName}</td>
																<td style="font-weight: normal;">${item.memo}</td>
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
													<%-- <c:set var="end" value="6"/> --%>
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
				<!--/row-->

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
	<script src="js/jquery.cookie.js"></script>
	<script src="js/jquery.noty.js"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/charisma.js" type="text/javascript">
	</script>
	<script type="text/javascript">
		!function() {
			laydate.skin('molv'); //切换皮肤，请查看skins下面皮肤库
			laydate({
				elem : '#demo'
			}); //绑定元素
		}();
	
		var startTime;
		var endTime;
		//alert($scope.startTime);
		startTime = "${startTime}"; // test为隐藏控件名%>
		endTime = "${endTime}";
		//日期范围限制
		var start = {
			elem : '#start',
			format : 'YYYY-MM-DD',
			min : laydate.now(-700), //设定最小日期为当前日期
			max : '2099-06-16', //最大日期
			istime : true,
			istoday : false,
			choose : function(datas) {
				end.min = datas; //开始日选好后，重置结束日的最小日期
				end.start = datas //将结束日的初始值设定为开始日
				startTime = datas;
			}
		};
	
		var end = {
			elem : '#end',
			format : 'YYYY-MM-DD',
			min : laydate.now(-700),
			max : '2099-06-16',
			istime : true,
			istoday : false,
			choose : function(datas) {
				start.max = datas; //结束日选好后，充值开始日的最大日期
				endTime = datas;
			}
		};
		laydate(start);
		laydate(end);
	
		function searchByTime() {
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
			input.name = "startTime";
			input.value = startTime;
	
			if (startTime == null || startTime == "" || startTime == "开始日:") {
				alert("请选择开始时间")
				return;
			}
			// 将该输入框插入到 form 中 
			form1.appendChild(input);
			// 类比插入第二个表单元素
			var input2 = document.createElement("input");
			input2.type = "text";
			input2.name = "endTime";
			input2.value = endTime;
			if (endTime == null || endTime == "" || endTime == "结束日:") {
				alert("请选择结束时间")
				return
			}
			form1.appendChild(input2);
			//加入完毕
	
			// form 的提交方式 
			form1.method = "POST";
			// form 提交路径 
			form1.action = "getCardRecordByTime.do";
			/* alert($('#startTime').val());
		 alert(startTime+""+endTime); */
			if (startTime == undefined || endTime == undefined) {
				alert("请选择日期");
				return;
			}
	
	
			// 对该 form 执行提交 
			form1.submit();
			// 删除该 form 
			document.body.removeChild(form1);
		}
	
		/*     function indexpage(indexed){
		    var index="${index}"
		    } */
	
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
			// 将该输入框插入到 form 中 
			form1.appendChild(input);
			//有时间的话，带上时间-------------------开始
			// 设置相应参数 
			var input1 = document.createElement("input");
			input1.type = "text";
			input1.name = "startTime";
			input1.value = startTime;
			// 将该输入框插入到 form 中 
			form1.appendChild(input1);
			// 类比插入第二个表单元素
			var input2 = document.createElement("input");
			input2.type = "text";
			input2.name = "endTime";
			input2.value = endTime;
			form1.appendChild(input2);
			//有时间的话，带上时间-------------------结束
			//加入完毕
			// form 的提交方式 
			form1.method = "POST";
			// form 提交路径 
			form1.action = "getCardRecordByTime.do";
			// 对该 form 执行提交 
			form1.submit();
			// 删除该 form 
			document.body.removeChild(form1);
			return false;
		}
	</script>

</body>
</html>

