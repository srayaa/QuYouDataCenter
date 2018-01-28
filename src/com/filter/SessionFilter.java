package com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

import com.pojo.MainProxy;
import com.pojo.Person;

import net.sf.json.JSONObject;

public class SessionFilter extends OncePerRequestFilter {

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
         System.out.println("会话过滤");
		// 不过滤的uri
		String[] notFilter = new String[] {"login","exit","logout","report"};
		// 请求的uri
		String uri = request.getRequestURI();
		boolean doFilter = true;
		for (String s : notFilter) {
			if (uri.indexOf(s) != -1) {
				// 如果uri中包含不过滤的uri，则不进行过滤
				doFilter = false;
				break;
			}
		}
		//doFilter=false;//测试模式
		if (doFilter) {
			Object obj = request.getSession().getAttribute("user");
			if (null == obj) {
				System.out.println("验证不通过");
			request.setCharacterEncoding("UTF-8");
			JSONObject jsonObject=new JSONObject();
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			if (uri.contains("Mobile")) {
				jsonObject.put("status", -5);
				out.print(jsonObject.toString());
			}else{
				String loginPage = "....";
				StringBuilder builder = new StringBuilder();
				builder.append("<script type=\"text/javascript\">");
				builder.append("alert('网页过期，请重新登录！');");
				builder.append("window.top.location.href=\"login\"");
				builder.append(loginPage);
				builder.append("';");
				builder.append("</script>");
				out.print(builder.toString());
				response.sendRedirect(request.getContextPath()+"/login.jsp");
			}
			
			
			
			
			//System.out.println(request.getContextPath());
			out.flush();  
			out.close(); 
		}else{
			//User user=(User) obj;
			//user.setLastVisitDate(System.currentTimeMillis());
			// 如果session中存在登录者实体，则继续
			filterChain.doFilter(request, response);
		}

		}else{
			// 如果不执行过滤，则继续
			 filterChain.doFilter(request, response);
		}
	}


}
