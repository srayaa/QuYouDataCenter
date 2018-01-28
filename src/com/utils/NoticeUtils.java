package com.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

public class NoticeUtils {

	public static void handleErrorNotice(HttpServletResponse response,String resultInfo,String href){
		PrintWriter out;
		response.setContentType("text/html;charset=gb2312");
		try {
			out = response.getWriter();
			out.print("<script language=\"javascript\">alert('"+resultInfo+"');window.location.href=\""+href+"\"; </script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void handleSuccessNotice(HttpServletResponse response,String href){
		PrintWriter out;
		response.setContentType("text/html;charset=gb2312");
		try {
			out = response.getWriter();
			out.print("<script language=\"javascript\">alert('"+"操作成功"+"！');window.location.href=\""+href+"\"; </script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void DadInputError(HttpServletResponse response){
		PrintWriter out;
		String href="playerMag.do";
		response.setContentType("text/html;charset=gb2312");
		try {
			out = response.getWriter();
			out.print("<script language=\"javascript\">alert('"+"数据输入不符合规范异常"+"！');window.location.href=\""+href+"\"; </script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void returnMsgToMoile(HttpServletResponse response,JSONObject jsonObject){
		try {
			PrintWriter pw = response.getWriter();  
			pw.write(jsonObject.toString());  
			pw.flush();  
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	}
}
