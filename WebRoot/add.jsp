<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html
	class=" w-mod-js w-mod-no-touch w-mod-video w-mod-no-ios w-mod-js w-mod-no-touch w-mod-video w-mod-no-ios w-mod-js w-mod-no-touch w-mod-video w-mod-no-ios w-mod-js w-mod-no-touch w-mod-video w-mod-no-ios w-mod-js w-mod-no-touch w-mod-video w-mod-no-ios w-mod-js w-mod-no-touch w-mod-video w-mod-no-ios">
<head>
<meta charset="utf-8">
<title>首页</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<link href="css/normalize.css" rel="stylesheet" type="text/css">
<link href="css/framework.css" rel="stylesheet" type="text/css">
<link href="css/washington.css" rel="stylesheet" type="text/css">
<script src="js/modernizr.js" type="text/javascript"></script>
<script src="js/app.js" type="text/javascript"></script>
<script> doTimeOut(); </script>

<link href="css/ionicons.min.css" rel="stylesheet" type="text/css">
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
							<div class="nav-menu-titles">退出登录</div>
						</a>
						<div class="separator-bottom"></div>
						<div class="separator-bottom"></div>
						<div class="separator-bottom"></div>
					</nav>
					<div class="wrapper-mask" data-ix="menu-mask"></div>
					<div class="navbar-title">首页</div>
					<div class="w-nav-button navbar-button left" id="menu-button"
						data-ix="hide-navbar-icons">
						<div class="navbar-button-icon icon ion-navicon-round"
							style="font-size: 30px;margin-top: 10px"></div>
					</div>
					<div
						style="margin-top: 14px; display: inline-block; font-weight: bold;">更多功能</div>
					<a class="w-inline-block navbar-button right" href="#"
						data-loader="1">
						<div class="navbar-button-icon icon ion-ios-bell"
							style="font-size: 30px;margin-top: 10px"></div>
					</a>
				</div>
			</div>
			<div class="body">

				<div class="w-tabs" data-duration-in="300" data-duration-out="100">
					<div class="w-tab-menu top-buttons">
						<a class="w-tab-link w--current w-inline-block toolbar-top-button"
							data-w-tab="Tab 1">
							<div>售卡</div>
						</a> <a class="w-tab-link w-inline-block toolbar-top-button"
							data-w-tab="Tab 2">
							<div>统计</div>
						</a>
					</div>
					<div class="w-tab-content tabs-content">
						<div class="w-tab-pane w--tab-active w-clearfix tab-pane"
							data-w-tab="Tab 1">
							<div class="w-form padding smaller" style="padding-top: 20px;">
								<form action="#">
									<div>
										<label class="label-form" for="full-name-field">我的名称:
											<span id="full-name-field"></span>
										</label>
										<div class="separator-fields"></div>
									</div>
									<div>
										<label class="label-form" for="numof-card-field2">限时房卡:
											<span id="numof-card-field1"></span>
											(有效日期:
											<span id="overplus-time"></span>
										)
										</label>
										<div class="separator-fields"></div>
									</div>
									<div>
										<label class="label-form" for="numof-card-field2">永久房卡:
											<span id="numof-card-field2"></span>
										</label>
										<div class="separator-fields"></div>
									</div>
									<div>
										<label class="label-form" for="today-sell-field2">今日售卡:
											<span id="today-sell-field2">1</span>
										</label>
										<div class="separator-fields"></div>
									</div>
									<br>
									<div>
										<label class="label-form" for="search-id-field">查找用户(通过ID)</label>
										<input class="w-input input-form" id="search-id-field"
											type="number" name="search-id" data-name="search-id"
											required="required">
										<div class="separator-fields"></div>
									</div>
									<input class="w-button action-button" type="button" value="查 找"
										data-wait="请稍候.." onclick="search()">
								</form>
							</div>
							<ul class="list-table list list-messages">
								<li class="list-message" data-ix="list-item"><a
									class="w-clearfix w-inline-block" href="#"
									onclick="return false;">
										<div class="w-clearfix column-left">
											<div class="image-message">
												<img src="" id="u-head">
											</div>
										</div>
										<div class="column-right">
											<div class="message-title" id="u-id" style="display: none"></div>
											<div class="message-title" id="u-name"></div>
											<div class="message-text"></div>
										</div>
								</a></li>
							</ul>
							<div id="addBtns" class="w-form padding"
								style="padding-top: 20px;">
								<button class="w-button action-button" onclick="add()">
									<span>点击添加房卡</span>
								</button>
							</div>
						</div>
						<div class="w-tab-pane w-clearfix tab-pane" data-w-tab="Tab 2">
							<div class="w-row" style="padding-top: 40px;">
								<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">
									<p class="description-new">今日售卡：</p>
									<p class="description-new" id="td00"></p>
								</div>
								<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">
									<p class="description-new">昨日售卡：</p>
									<p class="description-new" id="td10"></p>
								</div>
								<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">
									<p class="description-new">上周售卡：</p>
									<p class="description-new" id="td30"></p>
								</div>
								<hr>

								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">今日购卡：</p>-->
								<!--<p class="description-new" id="td01"></p>-->
								<!--</div>-->
								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">昨日购卡：</p>-->
								<!--<p class="description-new" id="td11"></p>-->
								<!--</div>-->
								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">上周购卡：</p>-->
								<!--<p class="description-new" id="td31"></p>-->
								<!--</div>-->
								<!--<hr>-->

								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">今日返利：</p>-->
								<!--<p class="description-new" id="td02"></p>-->
								<!--</div>-->
								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">昨日返利：</p>-->
								<!--<p class="description-new" id="td12"></p>-->
								<!--</div>-->
								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">上周返利：</p>-->
								<!--<p class="description-new" id="td32"></p>-->
								<!--</div>-->
								<!--<hr>-->

								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">今日获赠：</p>-->
								<!--<p class="description-new" id="td03"></p>-->
								<!--</div>-->
								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">昨日获赠：</p>-->
								<!--<p class="description-new" id="td13"></p>-->
								<!--</div>-->
								<!--<div class="w-col w-col-4 w-col-small-4 w-col-tiny-4">-->
								<!--<p class="description-new">上周获赠：</p>-->
								<!--<p class="description-new" id="td33"></p>-->
								<!--</div>-->
							</div>
						</div>
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
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/framework.js" type="text/javascript"></script>
	<script>
    $(function () {
        $('#addBtns').hide();
        refreshUserInfo(function (name,time,numOfCards1,numOfCards2, star, parentId) {
            $('#full-name-field').text(name);
            $('#overplus-time').text(time);
            $('#numof-card-field1').text(numOfCards1);
            $('#numof-card-field2').text(numOfCards2);
            if (star == 0)
                    $('#star-field').text('0星');
            else {
                var str = '';
                for (var i = 0; i < star; i++)
                    str += '★';
                $('#star-field').text(str);
            }
        });
    });
    function search() {
         doTimeOut(); 
        if (!$.trim($('#search-id-field').val()))
            return alert('请输入用户ID');
        var playerId = $('#search-id-field').val();
        var userId=parseInt(playerId);
        var url = "/handleOperationInMobile.do?operator=query&uid=" + playerId;
        doGetWithValidate(url, null, function (response) {
            console.log("response", response);
             if (response.status == -2){
             alert("您的权限无法对此人进行操作");
             return;
             }
            if (response.status == 0 && response.data.length > 0) {
                $('.list-table').show();
                $('#u-id').text(response.data[0]['userId']);
                $('#u-name').text(response.data[0]['username']);
                $('#u-head').attr('src', response.data[0]['icon']); 
                if(userId<100000){
                 $('.message-text').text('限时房卡数量: ' + response.data[0]['cardLCount'] + '张,永久房卡数量: ' + response.data[0]['cardFCount'] + '张');
                }else{
                $('.message-text').text('当前房卡数量: ' + response.data[0]['cardCount'] + '张');
                }
                $('#addBtns').show();
            }
            else {
                $('.list-table').hide();
                $('#u-id').text('');
                $('#u-name').text('未找到');
                $('#u-head').attr('src', '');
                $('.message-text').text('未找到');
                $('#addBtns').hide();
            }
        });

    }
    function add() {
         doTimeOut(); 
        console.log('-----------', doTimeOut());
        if (!$('#u-id').text())
            return false;
            var uid = $('#u-id').text();
            var uidNum = parseInt(uid);
        var str = prompt("请输入要增加的房卡数量(整数)");
        if (!$.trim(str) || !parseInt(str) || parseInt(str) <= 0)
            return alert("输入不正确, 请输入一个大于0的整数");

        var cash = 0;
         var flag = getCookie("flag");
        if (parseInt(flag) >0||uid<100000){
            var str1 = prompt("请输入金额(0是赠送,大于0售卖并记账)"); 
            if (!$.trim(str1) || parseInt(str1) ==NaN || parseInt(str1) < 0)
                return alert("输入不正确, 请输入一个大于0的整数");
            cash = parseInt(str1);
         }
        var num = parseInt(str);

	// give tip
/*         var give_num = 0;

        if (num % 11 == 0) {
            give_num = num / 11;
        }

        if (num == 12) {
            give_num = 3;
        } */
        if (confirm("给用户「" + $('#u-name').text() + "」添加 " + num + " 张房卡,金额"+cash+", 确认吗?")) {
       // if (confirm("给用户「" + $('#u-name').text() + "」添加 " + num + " 张房卡, 确认吗?")) {
            var url = "/sellCardHandleInMobile.do";
            doPostWithValidate(url, {
                operator: 'librain_sell'
                , uid: uid
                , cash: cash
                , num1: 0
                , num2: num
                , num3: 0
                , is_give: false
            }, function (d) {
                if (d.status == 0) {
                    alert('添加成功');
                    reloadPage();
                    location.reload();
                }
                else {
                    alert('添加失败');
                }
            });
        }
    }

    var url = "/cardstatsInMobile.do";
    doGetWithValidate(url, null, function (d) {
        console.log("cardstats........", d);
        $('#td00').text(d.today);
        $('#td10').text(d.yesterday);
        $('#td30').text(d.last_week);
        $('#today-sell-field2').text(d.today);
    });
</script>


</body>
</html>