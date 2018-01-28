
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

"use strict";app.controller("SigninFormController",["$rootScope","$scope","$http","$state","$cookies",function(a,b,c,d,e){b.user={},b.authError=null,b.agree= !0,b.login=function(){return b.agree?(b.authError=null,void c.post(SERVER_BASE+"login",{username:b.user.name,password:b.user.password}).then(function(c){c.data.status?b.authError="用户名或密码不正确":(a.userinfo=c.data.data,e.put("userinfo",JSON.stringify(c.data.data)),d.go("app.my"))},function(a){console.log("错误信息.......",a),b.authError="Server Error"})):alert("请勾选遵守推广协议")},b.forgetPass=function(){alert("找回密码请拨打客服电话:　4009911828")}}]);