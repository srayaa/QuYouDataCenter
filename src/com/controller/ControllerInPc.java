package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.security.auth.Subject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.text.StrTokenizer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.manager.ManageDao;
import com.dao.report.ReportDao;
import com.pojo.CardRecord;
import com.pojo.Customer;
import com.pojo.MainProxy;
import com.pojo.Manager;
import com.pojo.PageBean;
import com.pojo.Person;
import com.pojo.Proxy;
import com.pojo.Report;
import com.service.customer.CustomerService;
import com.service.mainProxy.MainProxyService;
import com.service.proxy.ProxyService;
import com.service.record.CardRecordService;
import com.utils.DateUtil;
import com.utils.NoticeUtils;
import com.utils.PriorityIdentify;
import com.utils.StringUtils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;



@Controller
public class ControllerInPc{

	@Autowired
	public MainProxyService mainProxyService;


	@Autowired
	public ProxyService proxyService;

	@Autowired
	public CustomerService customerService;

	@Autowired
	public CardRecordService cardRecordService;

	@Autowired
	public ManageDao manageDao;

	@Autowired
	public ReportDao reportDao;

	/**
	 * 售卡记录-------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/cardRecord")
	public ModelAndView cardRecord(HttpServletRequest  request,HttpServletResponse response) {
		Person person=(Person) request.getSession().getAttribute("user"); 
		String topageString=request.getParameter("toPage");
		String startTimeString=request.getParameter("startTime");
		String endTimeString=request.getParameter("endTime");
		int pageCount=10;
		int toPage=1;
		if (StringUtils.isNotEmpty(topageString)) {
			toPage=Integer.parseInt(topageString);
		}
		int sellerId=person.getUserId();
		List<CardRecord> list=null;
		int startIndex=0;
		int totalCount=0;
		if(pageCount*(toPage-1)<0){
			startIndex=0;
		}else{
			startIndex=pageCount*(toPage-1);
		}
		if (PriorityIdentify.isManager(person)) {
			list=cardRecordService.getAllCardRecord(startIndex,pageCount);
			totalCount=cardRecordService.getCountByTime();
		}else if(PriorityIdentify.isMainProxy(person)){
			/*list=cardRecordService.findCardByID(sellerId, startIndex, endIndex);
			List<Integer> proxyIds=proxyService.getProxyIdsByRecommendID(person.getUserId());
			if (proxyIds!=null&&proxyIds.size()>0) {
				proxyIds.add(sellerId);
				for(Integer proxyId:proxyIds){
					if (list!=null) {
						list.addAll(cardRecordService.findCardByID(proxyId, startIndex, endIndex));
					}else{
						list=cardRecordService.findCardByID(proxyId, startIndex, endIndex);
					}
				}
			}
			Collections.sort(list);*/
			List<Integer> proxyIds=new ArrayList<Integer>();
			proxyIds.addAll(proxyService.getProxyIdsByRecommendID(person.getUserId()));
			proxyIds.add(sellerId);
			list=cardRecordService.findCardRecordsInGroup(proxyIds, startIndex, pageCount);
			totalCount=cardRecordService.findCountInGroup(proxyIds, null, null);
		}else if(PriorityIdentify.isProxy(person)){
			list=cardRecordService.findCardBySellerIdandTime(sellerId, startIndex, pageCount);
			totalCount=cardRecordService.findCountByTimeAndId(sellerId);
		}
		//		if (list!=null) {
		//			Collections.reverse(list);	
		//		}
		ModelAndView modelAndView=new ModelAndView("cardRecord");
		modelAndView.addObject("list",list);
		int pageCounsize=0;
		if (startTimeString==null||startTimeString=="") {
			modelAndView.addObject("startTime","开始日:");
		}else{
			modelAndView.addObject("startTime",startTimeString);	
		}
		if (endTimeString==null||endTimeString=="") {
			modelAndView.addObject("endTime","结束日:");
		}else{
			modelAndView.addObject("endTime",endTimeString);	
		}
		pageCounsize=totalCount/pageCount+(totalCount%pageCount==0?0:1);
		modelAndView.addObject("page",new PageBean<CardRecord>(toPage,pageCounsize));
		return modelAndView;
	}

	/**
	 * 售卡记录，根据时间查看售卡记录---------PC端
	 * 代理管理,拿到代理列表
	 * 目前修正，将方法拆开
	 * @return
	 */
	@RequestMapping("/getCardRecordByTime")
	public ModelAndView getCardRecordByTime(HttpServletRequest request,HttpServletResponse response){
		Person person=(Person) request.getSession().getAttribute("user"); 
		String topageString=request.getParameter("toPage");
		int pageCount=10;
		int totalCount=0;
		int toPage=1;
		String startTimeString=request.getParameter("startTime");
		String endTimeString=request.getParameter("endTime");
		if (StringUtils.isNotEmpty(topageString,startTimeString,endTimeString)) {
			toPage=Integer.parseInt(topageString);
		}
		Date startTime=null;
		Date endTime=null;
		if (StringUtils.isNotEmpty(startTimeString,endTimeString)) {
			String[] sDate=startTimeString.split("-");
			String[] eDate=endTimeString.split("-");
			if(sDate.length<=0){
				return null;
			}
			try {
				if ("开始日:".equals(startTimeString)){
					startTime=null;
				}else{
					startTime=new Date(Integer.parseInt(sDate[0])-1900, Integer.parseInt(sDate[1])-1, Integer.parseInt(sDate[2]),0,0,0);	
				}
				if ("结束日:".equals(endTimeString)){
					endTime=null;
				}else{
					endTime=new Date(Integer.parseInt(eDate[0])-1900, Integer.parseInt(eDate[1])-1, Integer.parseInt(eDate[2]),23,59,59);
				}
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				startTime=null;
				startTime=null;
			}


		}


		int sellerId=person.getUserId();
		List<CardRecord> list=null;
		int startIndex=0;
		if(pageCount*(toPage-1)<0){
			startIndex=0;
		}else{
			startIndex=pageCount*(toPage-1);
		}


		if (PriorityIdentify.isManager(person)) {
			list=cardRecordService.getAllCardRecord(startTime, endTime,startIndex,pageCount);
			totalCount=cardRecordService.getCountByTime(startTime, endTime);
		}else if(PriorityIdentify.isMainProxy(person)){
			//list=cardRecordService.findCardBySellerIdandTime(person.getUserId(), startTime, endTime);
			List<Integer> proxyIds=proxyService.getProxyIdsByRecommendID(person.getUserId());
			if (proxyIds!=null) {
				proxyIds.add(person.getUserId());
			}else{
				proxyIds=new ArrayList<Integer>();
				proxyIds.add(person.getUserId());
			}
			//for(Integer proxyId:proxyIds){
			list=cardRecordService.findCardRecordsInGroup(proxyIds, startTime, endTime, startIndex, pageCount);
			totalCount=cardRecordService.findCountInGroup(proxyIds, startTime, endTime);
			/*if (list!=null) {
						list.addAll(cardRecordService.findCardBySellerIdandTime(proxyId, startTime, endTime));
					}else{
						list=cardRecordService.findCardBySellerIdandTime(proxyId, startTime, endTime);
					}*/
			//}
			//Collections.sort(list);
		}else if(PriorityIdentify.isProxy(person)){
			list=cardRecordService.findCardBySellerIdandTime(sellerId, startTime, endTime,startIndex,pageCount);
			totalCount=cardRecordService.findCountByTimeAndId(sellerId, startTime, endTime);
		}
		ModelAndView modelAndView=new ModelAndView("cardRecord");
		//Collections.reverse(list);
		modelAndView.addObject("list",list);
		modelAndView.addObject("startTime",startTimeString);
		modelAndView.addObject("endTime",endTimeString);
		int pageCounsize=0;
		pageCounsize=totalCount/pageCount+(totalCount%pageCount==0?0:1);
		modelAndView.addObject("page",new PageBean<CardRecord>(toPage,pageCounsize));
		return modelAndView;
	}
	/**
	 * 玩家管理列表--------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/playerMag")
	public ModelAndView playerMag(HttpServletRequest  request,HttpServletResponse response) {
		List<MainProxy> list=new ArrayList<MainProxy>();
		ModelAndView modelAndView=new ModelAndView("playerMag");
		modelAndView.addObject("list",list);
		return modelAndView;
	}


	/**
	 * 查找玩家---------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/playerMagForOne")
	public ModelAndView playerMagForOne(HttpServletRequest  request,HttpServletResponse response) {
		String userIdString=request.getParameter("userId");
		int userId=-1;
		System.out.println("查询代理");

		if (StringUtils.isNotEmpty(userIdString)) {
			try {
				userId=Integer.parseInt(userIdString);
			} catch (NumberFormatException e) {
				NoticeUtils.DadInputError(response);
				e.printStackTrace();
				return null;
			}
		}else{
			NoticeUtils.handleErrorNotice(response, "请输入正确的玩家id", "playerMag.do");
			return null;
		}
		List<Customer> list=new ArrayList<Customer>();
		Customer customer=customerService.QueryCustomerById(userId);
		if (customer!=null) {
			list.add(customer);
		}
		ModelAndView modelAndView=new ModelAndView("playerMag");
		modelAndView.addObject("list",list);
		return modelAndView;
	}
	/***
	 * 修改密码----------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/editPassword")
	public ModelAndView editPassword(HttpServletRequest  request,HttpServletResponse response) {
		Person person = (Person) request.getSession().getAttribute("user");
		String password=request.getParameter("password");
		String newPassword=request.getParameter("newPassword");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out;
		if (person.getPassword().equals(password)) {
			person.setPassword(newPassword);
			int result=-1;
			if (person instanceof Manager) {
				result=manageDao.editPassword((Manager)person);
			}else if(person instanceof MainProxy){
				result=mainProxyService.editPassword((MainProxy) person);
			}else if(person instanceof Proxy){
				result=proxyService.editPassword((Proxy) person);
			}
			if (result>=0) {
				NoticeUtils.handleSuccessNotice(response,"editPassword.jsp");
			}
		}else{
			NoticeUtils.handleErrorNotice(response, "原密码错误!", "editPassword.jsp");
		}
		return null;
	}

	/**
	 * 获取修改代理信息页面----------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/geteEditProxyInfo")
	public ModelAndView geteEditProxyInfo(HttpServletRequest  request,HttpServletResponse response){
		String userIdString=request.getParameter("userId");
		int userId=-1;
		if (StringUtils.isNotEmpty(userIdString)) {
			userId=Integer.parseInt(userIdString);
		}else{
			NoticeUtils.handleErrorNotice(response, "数据传输异常", "proxy.jsp");
		}
		Proxy proxy=proxyService.findProxyByID(userId);
		ModelAndView modelAndView=new ModelAndView("editProxyInfo");
		modelAndView.addObject("userId", proxy.getUserId());
		modelAndView.addObject("username", proxy.getUsername());
		modelAndView.addObject("address", proxy.getAddress());
		modelAndView.addObject("contactName", proxy.getContactName());
		modelAndView.addObject("contactPhone", proxy.getContactPhone());
		modelAndView.addObject("cardLCount", proxy.getCardLCount());
		modelAndView.addObject("cardFCount", proxy.getCardFCount());
		return modelAndView;
	}
	/**
	 * 修改代理信息-----------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/saveEditProxyInfo")
	public ModelAndView saveEditProxyInfo(HttpServletRequest  request,HttpServletResponse response){
		String userIdString=request.getParameter("userId");
		String username=request.getParameter("username");
		String address=request.getParameter("address");
		String contactName=request.getParameter("contactName");
		String contactPhone=request.getParameter("contactPhone");
		int userId=-1;

		if (StringUtils.isNotEmpty(userIdString)) {
			userId=Integer.parseInt(userIdString);
		}
		int result=-1;
		if (userId!=-1) {
			result=proxyService.updateProxy(new Proxy(userId,username, address, contactName, contactPhone));
		}
		String resultString;
		if(result>=0){
			resultString="成功";
		}else{
			resultString="失败";
		}
		NoticeUtils.handleErrorNotice(response, resultString, "proxy.do");
		return null;
	}

	/**
	 * 代理售卡页签获取-----------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/proxyAddCard")
	public ModelAndView proxyAddCard(HttpServletRequest  request,HttpServletResponse response) {
		System.out.println("卖卖卖");
		String buyerIdString=request.getParameter("buyerId");
		int buyerId=-1;
		if (buyerIdString!=null&&!"".equals(buyerIdString)) {
			buyerId=Integer.parseInt(buyerIdString);
		}else{
			NoticeUtils.handleErrorNotice(response, "数据传输异常，无此玩家!","proxy.do");
		}
		Proxy proxy=proxyService.findProxyByID(buyerId);
		ModelAndView modelAndView=new ModelAndView("proxyAddCard");
		modelAndView.addObject("userId", proxy.getUserId());
		modelAndView.addObject("username", proxy.getUsername());
		modelAndView.addObject("contactPhone", proxy.getContactPhone());
		modelAndView.addObject("cardLCount", proxy.getCardLCount());
		modelAndView.addObject("cardFCount", proxy.getCardFCount());
		return modelAndView;
	}
	/**
	 * 玩家售卡页面获取--------------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/customerAddCard")
	public ModelAndView customerAddCard(HttpServletRequest  request,HttpServletResponse response) {
		String buyerIdString=request.getParameter("buyerId");
		int buyerId=-1;
		if (StringUtils.isNotEmpty(buyerIdString)) {
			buyerId=Integer.parseInt(buyerIdString);
		}else{
			NoticeUtils.handleErrorNotice(response, "数据传输异常，无此玩家!","playerMag.do");
		}
		Customer customer=customerService.QueryCustomerById(buyerId);
		ModelAndView modelAndView=new ModelAndView("customerAddCard");
		modelAndView.addObject("userId", customer.getUserId());
		modelAndView.addObject("username", customer.getUsername());
		modelAndView.addObject("province", customer.getProvince());
		modelAndView.addObject("cardCount", customer.getCardCount());
		return modelAndView;
	}
	/**
	 * 管理员给总代售卡，页签获取-------------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/mainProxyAddCard")
	public ModelAndView mainProxyAddCard(HttpServletRequest  request,HttpServletResponse response) {
		String buyerIdString=request.getParameter("buyerId");
		int buyerId=-1;
		if (StringUtils.isNotEmpty(buyerIdString)) {
			buyerId=Integer.parseInt(buyerIdString);
		}else{
			NoticeUtils.handleErrorNotice(response, "数据传输异常，无此玩家!","mainproxy.do");
		}
		MainProxy proxy=mainProxyService.getyMainProxyById(buyerId);
		ModelAndView modelAndView=new ModelAndView("mainProxyAddCard");
		modelAndView.addObject("userId", proxy.getUserId());
		modelAndView.addObject("username", proxy.getUsername());
		modelAndView.addObject("contactPhone", proxy.getContactPhone());
		modelAndView.addObject("emergencyPhone", proxy.getEmergencyPhone());
		modelAndView.addObject("cardLCount", proxy.getCardLCount());
		modelAndView.addObject("cardFCount", proxy.getCardFCount());
		return modelAndView;
	}

	/**
	 * 售卡统一处理结算操作-------------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/sellCardHandle")
	public ModelAndView saveProxyAddCard(HttpServletRequest  request,HttpServletResponse response) {
		System.out.println("卖卖卖");
		Person person = (Person) request.getSession().getAttribute("user");
		String buyerIdString=request.getParameter("buyerId");
		String buyerName=request.getParameter("buyerName");
		String sellTypeString=request.getParameter("sellType");//0售卖，1赠送
		String incomeString=request.getParameter("income");//入账金额
		String addCardCountString=request.getParameter("addCardCount");
		String memoString=request.getParameter("memo");//备注
		String toTypeString=request.getParameter("toType");//0售卡给代理，1售卡给玩家,2给总代
		int sellTypeInCardRecord=-1;
		int buyerId=-1;
		int userId=person.getUserId();
		int sellType=-1;
		int addCardCount=-1;
		int personType=-1;
		int income=-1;
		int toType=-1;
		if (StringUtils.isNotEmpty(buyerIdString,addCardCountString,incomeString,toTypeString,sellTypeString)) {
			try {
				buyerId=Integer.parseInt(buyerIdString);
				addCardCount=Integer.parseInt(addCardCountString);
				income=Integer.parseInt(incomeString);
				toType=Integer.parseInt(toTypeString);
				sellType=Integer.parseInt(sellTypeString);
			} catch (NumberFormatException e) {
				NoticeUtils.DadInputError(response);
				e.printStackTrace();
				return null;
			}	
		}else{
			NoticeUtils.handleErrorNotice(response, "数据传输异常!","playerMag.do");
		}
		int result=-1;
		String href=null;
		Date cardLTime=person.getCardLTime();
		if (person instanceof Manager) {
			person=manageDao.getManagerById(person.getUserId());
			href="mainproxy.do";
			if(sellType==0){
				if (person.getCardFCount()<addCardCount) {
					NoticeUtils.handleErrorNotice(response, "您的房卡数不足", href);
					return null;
				}
			}
			else if(sellType==1){
				if (person.getCardLCount()<addCardCount) {
					NoticeUtils.handleErrorNotice(response, "您的房卡数不足", href);
					return null;
				}
			}
			switch (toType) {
			case 0:
				sellTypeInCardRecord=1;
				result=proxyService.updateCardCount(buyerId, sellType, addCardCount,cardLTime);
				href="proxy.do";
				break;
			case 1:
				sellTypeInCardRecord=2;
				result=customerService.updateCardCount(buyerId, addCardCount);
				href="playerMag.do";
				break;

			case 2:
				sellTypeInCardRecord=0;
				result=mainProxyService.updateCardCount(buyerId, sellType, addCardCount,cardLTime);
				href="mainproxy.do";
				break;

			default:
				break;
			}
			if(result>0){
				if(sellType==0){
					person.setCardFCount(person.getCardFCount()-addCardCount);
				}
				else if(sellType==1){
					person.setCardLCount(person.getCardLCount()-addCardCount);
				}
				result=manageDao.updateManager((Manager) person);
				request.getSession().setAttribute("user", person); 
				if (result>0) {
					person=manageDao.getManagerById(person.getUserId());
					NoticeUtils.handleSuccessNotice(response, href);
				}
				/**
				 * 省略失败情况，一般不会出现，稍后优化
				 */
			}
		}
		else if(person instanceof MainProxy){//主代售卡
			person=mainProxyService.getyMainProxyById(person.getUserId());
			href="proxy.do";
			if(sellType==0){
				if (person.getCardFCount()<addCardCount) {
					NoticeUtils.handleErrorNotice(response, "您的房卡数不足", href);
					return null;
				}
			}
			else if(sellType==1){
				if (person.getCardLCount()<addCardCount) {
					NoticeUtils.handleErrorNotice(response, "您的房卡数不足", href);
					return null;
				}
			}
			if (toType==0) {
				sellTypeInCardRecord=3;
			}else{
				sellTypeInCardRecord=4;
			}
			result=mainProxyService.sellCardCount(userId, buyerId, sellType, toType, addCardCount,income);
		}else if(person instanceof Proxy){//代理售卡
			person=proxyService.findProxyByID(person.getUserId());
			href="playerMag.do";
			if(sellType==0){
				if (person.getCardFCount()<addCardCount) {
					NoticeUtils.handleErrorNotice(response, "您的房卡数不足", href);
					return null;
				}
			}
			else if(sellType==1){
				if (person.getCardLCount()<addCardCount) {
					NoticeUtils.handleErrorNotice(response, "您的房卡数不足", href);
					return null;
				}
			}
			if (toType==0) {
				sellTypeInCardRecord=5;
			}else{
				sellTypeInCardRecord=6;
			}
			result=proxyService.sellCardCount(userId, buyerId, sellType, toType, addCardCount,income);
		}
		String resultString;
		if(result>=0){
			resultString="成功";
			if (sellType==0) {
				cardRecordService.addCardRecord(new CardRecord(person.getUserId(), person.getUsername(), sellTypeInCardRecord, new Date(System.currentTimeMillis()), income, sellType, 0, addCardCount, buyerId, buyerName, memoString));
			}else{
				cardRecordService.addCardRecord(new CardRecord(person.getUserId(), person.getUsername(), sellTypeInCardRecord, new Date(System.currentTimeMillis()), income, sellType, addCardCount, 0, buyerId, buyerName, memoString));
			}
		}else{
			resultString="失败";
		}
		NoticeUtils.handleErrorNotice(response, resultString, href);
		return null;
	}
	/**
	 * 管理员售卡给总代，售卡页面提交------------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/saveMainProxyAddCard")
	public ModelAndView saveMainProxyAddCard(HttpServletRequest  request,HttpServletResponse response) {
		System.out.println("管理员给总代充值提交");
		Person person = (Person) request.getSession().getAttribute("user");
		String buyerIdString=request.getParameter("buyerId");
		String sellTypeString=request.getParameter("sellType");//0售卖，1赠送
		String addCardCountString=request.getParameter("addCardCount");
		int buyerId=-1;
		int sellType=-1;
		int addCardCount=-1;
		Date cardLTime=person.getCardLTime();
		if (StringUtils.isNotEmpty(buyerIdString,sellTypeString,addCardCountString)) {
			try {
				buyerId=Integer.parseInt(buyerIdString);
				sellType=Integer.parseInt(sellTypeString);
				addCardCount=Integer.parseInt(addCardCountString);
			} catch (NumberFormatException e) {
				NoticeUtils.DadInputError(response);
				e.printStackTrace();
				return null;

			}
		}else{
			NoticeUtils.DadInputError(response);
		}
		int result=-1;
		if (PriorityIdentify.isManagerAndNotice(person, response)) {
			result=mainProxyService.updateCardCount(buyerId, sellType, addCardCount,cardLTime);	
		}
		String resultString;
		if(result>=0){
			resultString="成功";
		}else{
			resultString="失败";
		}
		NoticeUtils.handleErrorNotice(response, resultString, "mainproxy.do");
		return null;
	}
	/**
	 * 修改信息
	 * @param request
	 * @param response
	 * @return
	 *//*
	@RequestMapping("/editInfo")
	public ModelAndView editInfo(HttpServletRequest  request,HttpServletResponse response) {
		System.out.println("修改信息");
		List<MainProxy> list=new ArrayList<MainProxy>();
		list.add(new MainProxy("张三","明德门", "张三", "123456789","小二","11111",new Date(System.currentTimeMillis())));
		list.add(new MainProxy("张三1","明德门1", "张三1", "1234567891","小二1","11111",new Date(System.currentTimeMillis())));
		ModelAndView modelAndView=new ModelAndView("login");
		modelAndView.addObject("list",list);
		return modelAndView;
	}
	  */
	/**
	 * 退出系统-----------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/exit")
	public ModelAndView exit(HttpServletRequest  request,HttpServletResponse response){
		request.getSession().setAttribute("user", null);
		try {
			response.sendRedirect(request.getContextPath()+"/login.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//index page is user info show
		return null;
	}
	/**
	 * 登录功能-----------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest  request,HttpServletResponse response) {
		System.out.println("登录开始");
		String userIdString = request.getParameter("userId");  
		String password = request.getParameter("password");  
		int userId=-1;
		if (StringUtils.isNotEmpty(userIdString)) {
			try {
				userId=Integer.parseInt(userIdString);
			} catch (NumberFormatException e) {
				NoticeUtils.DadInputError(response);
				e.printStackTrace();
				return null;
			}
		}
		int type=-1;
		Person person;

		if (userId<=100) {
			person=manageDao.getManagerById(userId);	
			type=0;
		}else if(userId>=101&&userId<=1000){
			person=mainProxyService.getyMainProxyById(userId);
			type=1;
		}else{
			person=proxyService.findProxyByID(userId);
			type=2;
		}
		//账号存在
		if (person !=null) {
			if (person.getPassword().equals(password)) {
				//登陆成功，把user存入session域对象中  
				request.getSession().setAttribute("user", person); 
				request.getSession().setAttribute("userType",type); 
				//重定向到index.jsp  
				try {
					response.sendRedirect(request.getContextPath()+"/index.do");//index page is user info show
				} catch (IOException e) {
					e.printStackTrace();
				}  
				return null;
			}else{
				NoticeUtils.handleErrorNotice(response, "密码错误，请重新确认！", "login.jsp");
				//密码错误
				return null;
			}
		}else{
			//账号不存在
			NoticeUtils.handleErrorNotice(response, "用户不存在，请联系代理或者管理员进行注册！", "login.jsp");
			return null;
		}
	}



	/**
	 * 查看当前自己的信息-------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView lookupSelfInfo(HttpServletRequest  request,HttpServletResponse response){
		response.setContentType("text/html;charset=gb2312");
		ModelAndView modelAndView=new ModelAndView("index");
		Person person = (Person) request.getSession().getAttribute("user");
		String type=null;
		if (person instanceof Manager) {
			type="管理员";
			person=manageDao.getManagerById(person.getUserId());
		}else if(person instanceof MainProxy){
			type="总代";
			person=mainProxyService.getyMainProxyById(person.getUserId());
		}else if(person instanceof Proxy){
			person=proxyService.findProxyByID(person.getUserId());
			type="代理";
		}

		modelAndView.addObject("username", person.getUsername());
		modelAndView.addObject("userId", person.getUserId());
		modelAndView.addObject("cardLCount", person.getCardLCount());
		modelAndView.addObject("cardFCount", person.getCardFCount());
		modelAndView.addObject("cardLTime", person.getCardLTime());
		modelAndView.addObject("roleType",type);
		return modelAndView;
	}


	/**
	 * 添加代理---------PC端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/recommend")
	public String queryUser(HttpServletRequest  request,HttpServletResponse response) {
		Person person = (Person) request.getSession().getAttribute("user");
		String username=request.getParameter("username");
		String address=request.getParameter("address");
		String typeString=request.getParameter("type");//0添加总代，1添加代理
		String contactName=request.getParameter("contactName");
		String contactPhone=request.getParameter("contactPhone");
		String emergencyContact=request.getParameter("emergencyContact");
		String recommendPersonString=request.getParameter("recommendPerson");
		String emergencyPhone=request.getParameter("emergencyPhone");
		/**
		 * 省略紧急联系电话，只有总代有
		 */
		int recommendPerson=-1;
		int type=-1;
		try {
			if (StringUtils.isNotEmpty(typeString)) {
				if (StringUtils.isNotEmpty(recommendPersonString)) {
					recommendPerson=Integer.parseInt(recommendPersonString);	
				}else{
					recommendPerson=0;
				}
				type=Integer.parseInt(typeString);
			}
		} catch (NumberFormatException e1) {
			if (type==0) {
				NoticeUtils.handleErrorNotice(response, "数据传输异常", "mainProxyRecommend.jsp");
			}else{
				NoticeUtils.handleErrorNotice(response, "数据传输异常", "proxyRecommend.jsp");	
			}
			e1.printStackTrace();
			return null;
		}
		if (type==0) {
			if (PriorityIdentify.isManagerAndNotice(person, response)) {
				MainProxy newMainProxy=new MainProxy(username, address, contactName, contactPhone, emergencyContact,emergencyPhone,new Date(System.currentTimeMillis()));
				mainProxyService.addUser(newMainProxy);	
				NoticeUtils.handleSuccessNotice(response, "mainproxy.do");
			}
		}else if(type==1){
			if (PriorityIdentify.isManagerAndMainProxyWithNotice(person, response)) {
				proxyService.addProxy(new Proxy(username, address, contactName, contactPhone,recommendPerson,new Date(System.currentTimeMillis())));
			}
			NoticeUtils.handleSuccessNotice(response, "proxy.do");
		}

		return null;

	}

	/**
	 * 0管理员，1总代----------------PC端
	 * 总代管理,拿到总代列表
	 * 目前修正，将方法拆开
	 * @return
	 */
	@RequestMapping("/mainproxy")
	public ModelAndView mainProxyManage(HttpServletRequest request,HttpServletResponse response){
		ModelAndView model=new ModelAndView("mainproxy");
		Person person = (Person) request.getSession().getAttribute("user");

		String topageString=request.getParameter("toPage");
		int pageCount=10;
		int toPage=1;
		if (StringUtils.isNotEmpty(topageString)) {
			toPage=Integer.parseInt(topageString);
		}
		int startIndex=0;
		int totalCount=0;
		int pageCounsize=0;
		if(pageCount*(toPage-1)<0){
			startIndex=0;
		}else{
			startIndex=pageCount*(toPage-1);
		}

		if (PriorityIdentify.isManagerAndNotice(person, response)) {
			List<MainProxy> mainProxyList =mainProxyService.getMainProxys(startIndex,pageCount);
			totalCount=mainProxyService.getMainProxysCount();
			model.addObject("list",mainProxyList);
			pageCounsize=totalCount/pageCount+(totalCount%pageCount==0?0:1);
			model.addObject("page",new PageBean<CardRecord>(toPage,pageCounsize));
			return model;
		}
		return null;

	}

	/**
	 * 0管理员，1总代-------------PC端
	 * 代理管理,拿到代理列表
	 * 目前修正，将方法拆开
	 * @return
	 */
	@RequestMapping("/mainProxyOne")
	public ModelAndView mainProxyOne(HttpServletRequest request,HttpServletResponse response){
		ModelAndView model=new ModelAndView("mainproxy");
		Person person = (Person) request.getSession().getAttribute("user");
		String userIdString=request.getParameter("userId");
		int userId=-1;
		System.out.println("查询代理");
		if (StringUtils.isNotEmpty(userIdString)&&StringUtils.isNumeric(userIdString)) {
			try {
				userId=Integer.parseInt(userIdString);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				NoticeUtils.DadInputError(response);
				return null;
			}
		}
		if (PriorityIdentify.isManagerAndNotice(person, response)) {
			MainProxy mainProxy;
			ArrayList<MainProxy> list=new ArrayList<MainProxy>();
			if (userId!=-1) {
				mainProxy= mainProxyService.getyMainProxyById(userId);
				if (mainProxy!=null) {
					list.add(mainProxy);	
				}
			}
			//模糊搜素
			if (StringUtils.isNotEmpty(userIdString)) {
				List<MainProxy> list1=mainProxyService.getPersonLikeUsername(userIdString);
				if (list1!=null&&list1.size()>0) {
					list.addAll(list1);	
				}	
			}else{
				NoticeUtils.DadInputError(response);
			}
			model.addObject("list",list);
			return model;	
		}
		return null;


	}
	/**
	 * 0管理员，1总代--------------PC端
	 * 代理管理,拿到代理列表
	 * 目前修正，将方法拆开
	 * @return
	 */
	@RequestMapping("/proxyOne")
	public ModelAndView proxyOne(HttpServletRequest request,HttpServletResponse response){
		int startIndex=0;
		int endIndex=0;
		String topageString=request.getParameter("toPage");
		int pageCount=10;
		int totalCount=0;
		int toPage=1;
		if (StringUtils.isNotEmpty(topageString)){
			toPage=Integer.parseInt(topageString);
		}
		if(pageCount*(toPage-1)<0){
			startIndex=0;
		}else{
			startIndex=pageCount*(toPage-1);
		}
		endIndex=startIndex+pageCount;
		ModelAndView model=new ModelAndView("proxy");
		Person person = (Person) request.getSession().getAttribute("user");
		String userIdString=request.getParameter("userId");
		int userId=-1;
		if (StringUtils.isNotEmpty(userIdString)&&StringUtils.isNumeric(userIdString)) {
			userId=Integer.parseInt(userIdString);
		}
		if (PriorityIdentify.isManager(person) ||PriorityIdentify.isMainProxyAndNotice(person, response)) {
			Proxy proxy;
			ArrayList<Proxy> list=new ArrayList<Proxy>();
			if (userId!=-1) {
				proxy= proxyService.findProxyByID(userId);
				if (PriorityIdentify.isMainProxy(person)) {
					if (proxy!=null) {
						proxy.setPassword("");	
					}

				}
				if (proxy!=null) {
					list.add(proxy);	
				}
			}
			if (StringUtils.isNotEmpty(userIdString)) {
				//模糊搜素
				List<Proxy> list1=proxyService.getPersonLikeUsername(userIdString);
				if (list1!=null&&list1.size()>0) {
					list.addAll(list1);	
				}
			}
			List<Proxy> subList=null;
			totalCount=list.size();
			if (totalCount<=endIndex){
				subList= list.subList(startIndex, totalCount);
			}else{
				subList= list.subList(startIndex, endIndex);	
			}

			model.addObject("list",subList);
			model.addObject("toPage",toPage);
			int pageCounsize=0;
			pageCounsize=totalCount/pageCount+(totalCount%pageCount==0?0:1);
			model.addObject("page",new PageBean<CardRecord>(toPage,pageCounsize));
			if(StringUtils.isNotEmpty(userIdString)){
				model.addObject("userId",userIdString);
			}
			return model;	
		}
		return null;

	}

	/**
	 * 0管理员，1总代------------PC端
	 * 代理管理,拿到代理列表
	 * 目前修正，将方法拆开
	 * @return
	 */
	@RequestMapping("/proxy")
	public ModelAndView proxyManage(HttpServletRequest request,HttpServletResponse response){
		ModelAndView model=new ModelAndView("proxy");
		Person person = (Person) request.getSession().getAttribute("user");
		String topageString=request.getParameter("toPage");
		int pageCount=10;
		int toPage=1;
		if (StringUtils.isNotEmpty(topageString)) {
			toPage=Integer.parseInt(topageString);
		}
		int sellerId=person.getUserId();
		List<Proxy> list=null;
		int startIndex=0;
		int totalCount=0;
		int pageCounsize=0;
		if(pageCount*(toPage-1)<0){
			startIndex=0;
		}else{
			startIndex=pageCount*(toPage-1);
		}
		if (PriorityIdentify.isManager(person)) {
			totalCount=proxyService.getAllProxysCount();
			list=proxyService.getAllProxys(startIndex,pageCount);
		}else if(PriorityIdentify.isMainProxyAndNotice(person, response)){
			totalCount=proxyService.getProxysByRecommendIDCount(person.getUserId());
			list=proxyService.getProxysByRecommendID(person.getUserId(),startIndex,pageCount);
			if (list!=null&&list.size()>0) {
				for(Proxy proxy:list){
					proxy.setPassword("");
				}
			}
		}
		model.addObject("list",list);
		pageCounsize=totalCount/pageCount+(totalCount%pageCount==0?0:1);
		model.addObject("page",new PageBean<CardRecord>(toPage,pageCounsize));
		return model;

	}


	/**
	 * 0管理员，1总代
	 * 代理管理,拿到代理列表
	 * 目前修正，将方法拆开
	 * @return
	 */
	@RequestMapping("/getIpInfo")
	public ModelAndView getIpInfo(HttpServletRequest request,HttpServletResponse response){
		ModelAndView model=new ModelAndView("proxy");
		Person person = (Person) request.getSession().getAttribute("user");
		List list;
		return model;
	}
	/**
	 * 意见反馈
	 * 
	 * 
	 * @return
	 */
	@RequestMapping("/report")
	public ModelAndView getReport(HttpServletRequest request,HttpServletResponse response){
		
		Report report=new Report();
		report.setName(request.getParameter("name"));;
		report.setPhoneNumber(request.getParameter("phoneNumber"));;
		report.setWeChat(request.getParameter("weChat"));;
		if (StringUtils.isNotEmpty(request.getParameter("userId"))){
			report.setGameId(Integer.parseInt(request.getParameter("userId")));;	
		}
		report.setAddress(request.getParameter("address"));
		if (StringUtils.isNotEmpty(request.getParameter("questionType"))){
			report.setQuestionType(Integer.parseInt(request.getParameter("questionType")));;	
		}
		report.setQuestionDesc(request.getParameter("questionDesc"));;
		report.setSaveTime(new Date(System.currentTimeMillis()));
		reportDao.addReportRecord(report);
		ModelAndView model=new ModelAndView("report");
		return model;
	}
}

