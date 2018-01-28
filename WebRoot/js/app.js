
/********************************************************************/
/*                                                                  */
/*  Copyright (c) 2017 Genesis Mobile                               */
/*                                                                  */
/*  This obfuscated code was created by Jasob 4.2 Trial Version.    */
/*  The code may be used for evaluation purposes only.              */
/*  To obtain full rights to the obfuscated code you have to        */
/*  purchase the license key (http://www.jasob.com/Purchase.html).  */
/* http://sxmjserver.yiwan777.cn:8080/DataCenter  */
/*http://192.168.1.146:8080/DataCenter*/
/********************************************************************/

var base_url = "http://192.168.0.34:8080/DataCenter";
window.onload = function() {
	var logos = document.querySelectorAll('.logo');
	var terms = document.querySelector('#terms');
	var star = document.querySelector('#star');
	var label = document.querySelector('.body > label');
	for (var i = 0; i < logos.length; i++) logos[i].innerText = '趣友欢乐游戏';
	terms && terms.setAttribute('href', '#');star && star.setAttribute('href', '#');label && (label.innerText = '趣友欢乐游戏推广员系统');
};
function refreshVcode() {
	$('#vcode_img').attr('src', base_url + '/api/verifyCode?' + new Date().getTime());
}
;
function gotoHtml(url) {
	window.location.href = base_url+url;
}
;
function reloadPage() {
	window.location.href = window.location.href;
}
;
var toDateTimeTZInfoString = (function() {
	if (Date.prototype.toLocaleDateString) {
		return function(date) {
			var now = date || new Date();
			return now.toLocaleDateString('ja', {
					year : 'numeric',
					month : '2-digit',
					day : '2-digit'
				}).replace(/\//g, '-') + ' ' + now.toTimeString().replace(/GMT\+\d*.*/g, '');
		};
	}
	return function(date) {
		var now = date || new Date();
		return [ now.getFullYear(), '-', ('0' + (now.getMonth() + 1)).slice(-2), '-', ('0' + now.getDate()).slice(-2), ' ', now.toTimeString().replace(/GMT\+\d*.*/g, '') ].join('');
	};
})();
function getLocalTime(nS) {
	if (nS < 10000000000)
		nS *= 1000;
	return toDateTimeTZInfoString(new Date(parseInt(nS)));
}
;
function setCookie(cname, cvalue, exhours) {
	exhours = exhours || 2;var d = new Date();
	d.setTime(d.getTime() + (exhours * 60 * 60 * 1000));var expires = "expires=" + d.toUTCString() + ';';
	document.cookie = cname + "=" + cvalue + "; " + expires;
}
;
function getCookie(cname, str) {
	str = str || document.cookie;var name = cname + "=";
	var ca = str.split(';');
	for (var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ') c = c.substring(1);
		if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
	}
	return "";
}
;
function clearCookie(name) {
	setCookie(name, "", -1);
}
;
function openimg(str) {
	var newwin = window.open();
	newwin.document.write("<img src=" + str + " />");
}
;
function doTimeOut() {
	var uid = getCookie("uid");
	if (uid == "" || uid == null || typeof (uid) == "undefined") {
		gotoHtml("/login_mb.jsp");return;
	}
}
;
function doPostWithValidate(url, data, callback) {
	doTimeOut();var url = base_url + url;
	post(url, data, true, callback);
}
;
function doGetWithValidate(url, data, callback) {
	doTimeOut();var url = base_url + url;
	get(url, data, true, callback);
}
;
function logout() {
	var cookies = document.cookie.split(";");
	for (var i = 0; i < cookies.length; i++) {
		var cookie = cookies[i];
		var eqPos = cookie.indexOf("=");
		var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
		document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
	}
	doLogout();
	/*window.location.href = '/login_mb.jsp';*/
}
;
function doLogin(uid, pwd, cbSucc, cbFail) {
	var loginUrl = base_url + "/loginMb.do";
	postLogin(loginUrl, {
		username : uid,
		password : pwd
	}, true, function(d, status, xhr) {
		var msg=JSON.parse(d);
		if (msg.status == 0) {
			setCookie("uid", msg.uid);setCookie("nickName", msg.nickName);setCookie("role", msg.role);setCookie("star", msg.star);
			setCookie("flag", msg.flag);
			cbSucc();
		} else {
			cbFail(d);
		}
	});
}
;
function doLogout() {
	var uid = getCookie("uid");
	if (uid != "") {
		var loginUrl = base_url + "/logoutMb.do";
		postLogin(loginUrl, {
			uid : uid
		}, true, function(d) {
			/*if (d['status'].value == 0) {*/
				clearCookie("uid");clearCookie("nickName");clearCookie("role");
				alert("退出成功！")
				gotoHtml("/login_mb.jsp");
			/*} else {
				alert("退出失败！");
			}*/
			console.log(JSON.stringify(d));
			console.log(d['status'].value);
		});
	}
}
;
function getJsonp(url, data, callback) {
	$.ajax({
		url : url,
		dataType : 'jsonp',
		type : 'GET',
		data : data,
		jsonp : "callback",
		async : false,
		xhrFields : {
			withCredentials : true
		},
		crossDomain : true,
		success : function(json) {
			callback(json);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {}
	});
}
;
function doGet(url, data, callback) {
	get(url, data, false, callback);
}
;
function doPost(url, data, callback) {
	post(url, data, false, callback);
}
;
function get(url, data, isasync, callback) {
	$.ajax({
		url : url,
		type : 'GET',
		data : data,
		async : isasync,
		xhrFields : {
			withCredentials : true
		},
		crossDomain : true,
		contentType : "application/json",
		dataType : 'json',
		success : function(json) {
			if (json.status == -5) {
				gotoHtml("/login_mb.jsp");return;
			}
			if (json.status == 0) {
				callback(json);
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {}
	});
}
;
function post(url, data, isasync, callback) {
	$.ajax({
		type : 'POST',
		url : url,
		data : JSON.stringify(data),
		async : isasync,
		xhrFields : {
			withCredentials : true
		},
		crossDomain : true,
		contentType : "application/json",
		success : function(json) {
			var msg=JSON.parse(json);
			if (msg.status == -5) {
				gotoHtml("/login_mb.jsp");return;
			}
			callback(msg);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {}
	});
}
;
function postLogin(url, data, isasync, callback) {
	$.ajax({
		type : 'POST',
		url : url,
		data : JSON.stringify(data),
		async : isasync,
		xhrFields : {
			withCredentials : true
		},
		crossDomain : true,
		contentType : "application/json",
		success : function(json, status, xhr) {
			callback(json, status, xhr);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {}
	});
}
;
function refreshUserInfo(cbSucc) {
	var uid = getCookie("uid");
	doGetWithValidate("/handleOperationInMobile.do?operator=get_console_info", null, function(d) {
		console.log("mobile_user", d);
		var nickName = d['name'];
		var time = d['time'];
		var numOfCards1 = d['numof_cards_1'];
		var numOfCards2 = d['numof_cards_2'];
		var star = d['star'] || 3;
		var parentId = 0;
		cbSucc(nickName,time, numOfCards1,numOfCards2, star, parentId);
	});
}