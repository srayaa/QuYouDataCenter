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
			<a class="navbar-brand">   <span style="font-size: 20px;font-weight: bold">趣友欢乐游戏</span></a>
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
							<c:if
								test="${sessionScope.userType==0}">
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
									<i class="glyphicon glyphicon-asterisk"></i>会员列表
								</h2>

								<div class="box-icon" style="position: absolute;right: 300px">
									<input type=button value="添加代理" style="font-weight:normal; font-family:宋体;background-color:#7264BA;color: white;font-size:12px;padding:5px 5px 5px 5px;border:none;" onclick="location.href='proxyRecommend.jsp'";> 
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

										<form action="saveEditProxyInfo.do" class="testform" method="post">
										<input type="hidden" name="userId" value="${userId}"></input>
										<tr>
											<td>名称：</td>
											<td><input type="text" name="username" 
												value="${username}"
												style="border:1px solid #b4b4b4;width:180px"/></td>
										</tr>
										<tr>
											<td>地址：</td>
											<td><input type="text" name="address" 
												value="${address}"
												style="border:1px solid #b4b4b4;width:180px"
												/></td>
										</tr>
										<tr>
											<td>联系人：</td>
											<td><input type="text" name="contactName" 
												value="${contactName}"
												style="border:1px solid #b4b4b4;width:180px"
												/></td>
										</tr>
										<tr>
											<td>联系电话：</td>
											<td><input type="text" name="contactPhone" 
												value="${contactPhone}"
												style="border:1px solid #b4b4b4;width:180px"
												onblur="OnInput (event)"
												/></td>
										</tr>
										
										<tr>
											<td>限时房卡数量：</td>
											<td><input type="text" name="cardLCount"
												value="${cardLCount}"
												style="border:1px solid #b4b4b4;width:180px"
												disabled="disabled" /></td>
										</tr>
										<tr>
											<td>永久房卡数量：</td>
											<td><input type="text" name="cardFCount"
												value="${cardFCount}"
												style="border:1px solid #b4b4b4;width:180px"
												disabled="disabled" /></td>
										</tr>
										<input type="hidden" name="buyerId" value="${userId}"></input>
										<input type="hidden" name="toType" value="0"></input>
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
		 function sumbit_sure(){   
    var p0 = document.getElementById("contactPhone").value; //获取密码框的值
    if(checkTel(p0)){
    if (window.confirm("确定要提交?")) {
     return true;
    }
    }
    return false;
    }  
    function checkTel(phone){
     var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
      if(!myreg.test(phone)) 
       { 
           alert('请输入有效的手机号码！'); 
           return false; 
       } 
      return true;
   } 
    // Firefox, Google Chrome, Opera, Safari, Internet Explorer from version 9
        function OnInput (event) {
        var phone=event.target.value;
        checkTel(phone)
        }
	</script>
</body>
</html>

