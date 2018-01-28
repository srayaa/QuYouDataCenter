package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.manager.ManageDao;
import com.pojo.CardRecord;
import com.pojo.Customer;
import com.pojo.MainProxy;
import com.pojo.Manager;
import com.pojo.Person;
import com.pojo.Proxy;
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
public class ControllerInMobile {

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

	//================================================================================
	//-------------------------------处理移动端报文--------------------------------------
	//===============================================================================
	/**
	 * 购卡记录---------------移动端
	 * @param type
	 * @param start_time
	 * @param end_time
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/buyCardInMobile")
	@ResponseBody
	public ModelAndView buyCardInMobile(@RequestParam int type,@RequestParam int start_index,@RequestParam int end_index,HttpServletRequest  request,HttpServletResponse response) {
		Person person=(Person) request.getSession().getAttribute("user"); 
		int sellerId=person.getUserId();
		List<CardRecord> list=null;
		JSONObject jsonObject=new JSONObject();
	/*	Date startTime=new Date(start_time*1000);
		Date endTime=new Date(end_time*1000);;*/
		if (PriorityIdentify.isManager(person)) {
			list=cardRecordService.getAllCardRecord(start_index, end_index);
		}else{
			//买卡记录
			if(PriorityIdentify.isMainProxy(person)||PriorityIdentify.isProxy(person)){
				list=cardRecordService.findCardByBuyerIdandTime(sellerId,start_index,end_index);
			}

			//ModelAndView modelAndView=new ModelAndView("cardRecord");
		}

		if (list!=null&&list.size()>0) {
			for(CardRecord cardRecord:list){
				cardRecord.setSellTimeInMb(cardRecord.getSellTime().getTime()/1000);
			}
		}
		//Collections.reverse(list);
		jsonObject.put("data", JSONArray.fromObject(list));
		if(StringUtils.isNotEmpty(jsonObject.get("data").toString())){
			jsonObject.put("status", 0);
		}	
		try {
			PrintWriter pw = response.getWriter();  
			pw.write(jsonObject.toString());  
			pw.flush();  
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return null;
	}
	/**
	 * 售卡记录-------------移动端
	 * @param type
	 * @param start_time
	 * @param end_time
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/cardRecordInMobile")
	@ResponseBody
	public ModelAndView cardRecordInMobile(@RequestParam int start_index,@RequestParam int end_index,HttpServletRequest  request,HttpServletResponse response) {
		Person person=(Person) request.getSession().getAttribute("user"); 
		int sellerId=person.getUserId();
		List<CardRecord> list=null;
		//Date startTime=new Date(start_time*1000);
		//Date endTime=new Date(end_time*1000);;
		if (PriorityIdentify.isManager(person)) {
			list=cardRecordService.getAllCardRecord(start_index, end_index);
		}else{

			//售卡记录
			if(PriorityIdentify.isMainProxy(person)){
				list=cardRecordService.findCardBySellerIdandTime(sellerId, start_index, end_index);
				List<Integer> proxyIds=proxyService.getProxyIdsByRecommendID(person.getUserId());
				if (proxyIds!=null&&proxyIds.size()>0) {
					for(Integer proxyId:proxyIds){
						if (list!=null) {
							list.addAll(cardRecordService.findCardBySellerIdandTime(proxyId, start_index, end_index));
						}else{
							list=cardRecordService.findCardBySellerIdandTime(proxyId, start_index, end_index);;
						}
					}
				}
				Collections.sort(list);
			}else if(PriorityIdentify.isProxy(person)){
				list=cardRecordService.findCardBySellerIdandTime(sellerId, start_index, end_index);
			}
		}
		if (list!=null&&list.size()>0) {
			for(CardRecord cardRecord:list){
				cardRecord.setSellTimeInMb(cardRecord.getSellTime().getTime()/1000);
			}
		}
		JSONObject jsonObject=new JSONObject();
		//Collections.reverse(list);
		jsonObject.put("data", JSONArray.fromObject(list));
		if(StringUtils.isNotEmpty(jsonObject.get("data").toString())){
			jsonObject.put("status", 0);
		}	
		//ModelAndView modelAndView=new ModelAndView("cardRecord");
		try {
			PrintWriter pw = response.getWriter();  
			pw.write(jsonObject.toString());  
			pw.flush();  
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return null;
	}
	/**
	 * 获取近期售卡情况--------移动端
	 * @param operator
	 * @param uid
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/cardstatsInMobile")
	public String cardstats(HttpServletRequest  request,HttpServletResponse response){
		Person person = (Person) request.getSession().getAttribute("user");
		JSONObject jsonObject=new JSONObject();
		Date todayStart=DateUtil.getDayBegin();
		Date todayEnd=DateUtil.getDayEnd();
		Date lastaDayStart=DateUtil.getBeginDayOfYesterday();
		Date lastDayEnd=DateUtil.getEndDayOfYesterDay();
		Date lastaWeekStart=DateUtil.getLastWeekStart();
		Date lastWeekEnd=DateUtil.getLastWeekEnd();
		List<CardRecord> todayList=cardRecordService.findCardBySellerIdandTime(person.getUserId(),todayStart, todayEnd);
		List<CardRecord> lastdayList=cardRecordService.findCardBySellerIdandTime(person.getUserId(),lastaDayStart, lastDayEnd);
		List<CardRecord> lastWeekList=cardRecordService.findCardBySellerIdandTime(person.getUserId(),lastaWeekStart, lastWeekEnd);
		int todayCount=0;	
		if (todayList!=null&&todayList.size()>0) {
			for(CardRecord cardRecord:todayList){
				todayCount=todayCount+cardRecord.getCardFCount()+cardRecord.getCardLCount();
			}	
		}

		int lastdayCount=0;	
		if (lastdayList!=null&&lastdayList.size()>0) {
			for(CardRecord cardRecord:lastdayList){
				lastdayCount=lastdayCount+cardRecord.getCardFCount()+cardRecord.getCardLCount();
			}	
		}

		int lastweekCount=0;	
		if (lastWeekList!=null&&lastWeekList.size()>0) {
			for(CardRecord cardRecord:lastWeekList){
				lastweekCount=lastweekCount+cardRecord.getCardFCount()+cardRecord.getCardLCount();
			}	
		}

		jsonObject.put("today", todayCount);
		jsonObject.put("yesterday", lastdayCount);
		jsonObject.put("last_week", lastweekCount);
		jsonObject.put("status", 0);
		try {
			PrintWriter pw = response.getWriter();  
			pw.write(jsonObject.toString());  
			pw.flush();  
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

		//response.setContentType("text/html;charset=UTF-8");  
		/*  try {
				PrintWriter pw = response.getWriter();  
				pw.write(responseString);  
				pw.flush();  
				pw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			return "success";*/
		return null;
	}
	/***
	 * 修改密码---------------移动端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/repassInMobile")
	@ResponseBody
	public ModelAndView repass(@RequestBody String msg,HttpServletRequest  request,HttpServletResponse response) {
		JSONObject requestJson=JSONObject.fromObject(msg);
		Person person = (Person) request.getSession().getAttribute("user");
		String password=requestJson.getString("ori_pass");
		String newPassword=requestJson.getString("new_pass");
		JSONObject jsonObject=new JSONObject();
		//	response.setContentType("text/html;charset=gb2312");
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
				jsonObject.put("status", 0);
				//NoticeUtils.handleSuccessNotice(response,"editPassword.jsp");
			}
		}else{
			jsonObject.put("status", -1);
			//NoticeUtils.handleErrorNotice(response, "原密码错误!", "editPassword.jsp");
		}
		try {
			PrintWriter pw = response.getWriter();  
			pw.write(jsonObject.toString());  
			pw.flush();  
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return null;
	}
	/**
	 * 售卡统一处理结算操作---------移动端
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/sellCardHandleInMobile")
	@ResponseBody
	public ModelAndView saveProxyAddCardInMobile(@RequestBody String  requestMsg
			,HttpServletRequest  request,HttpServletResponse response) {
		Person person = (Person) request.getSession().getAttribute("user");
		//String buyerIdString=request.getParameter("uid");
		String uid=(String) JSONObject.fromObject(requestMsg).get("uid");
		int num= (int) JSONObject.fromObject(requestMsg).get("num2");
		int cash=(int) JSONObject.fromObject(requestMsg).get("cash");
		String buyerName="";
		JSONObject jsonObject=new JSONObject();
		//sellTypeString0售卖，1赠送
		//income入账金额
		String addCardCountString=request.getParameter("num");
		int buyerId=-1;
		buyerId=Integer.parseInt(uid);;
		//toTypeString0售卡给代理，1售卡给玩家,2给总代
		String memoString="";
		int sellTypeInCardRecord=-1;

		int userId=person.getUserId();
		int sellType=0;//统一为售卖
		if (cash>0) {
			sellType=0;
		}else{
			sellType=1;
		}
		int addCardCount=-1;
		int personType=-1;
		int income=cash;
		int toType=1;
		//判断toType值，并且拿到卖家名字------开始
		if (buyerId<=100) {
			jsonObject.put("status", -1);
			NoticeUtils.returnMsgToMoile(response, jsonObject);
		}
		else if(buyerId>=101&&buyerId<=1000){
			toType=2;
			MainProxy mainProxy=mainProxyService.getyMainProxyById(buyerId);
			if (mainProxy!=null) {
				buyerName=mainProxy.getUsername();	
			}else{
				jsonObject.put("status", -1);
				NoticeUtils.returnMsgToMoile(response, jsonObject);
				return null;
			}
		}else if(buyerId>=10000&&buyerId<100000){
			Proxy proxy=proxyService.findProxyByID(buyerId);
			if (proxy!=null) {
				buyerName=proxy.getUsername();	
			}else{
				jsonObject.put("status", -1);
				NoticeUtils.returnMsgToMoile(response, jsonObject);
				return null;
			}
			toType=0;
		}else{
			toType=1;
			Customer customer=customerService.QueryCustomerById(buyerId);
			if (customer!=null) {
				buyerName=customer.getUsername();	
			}else{
				jsonObject.put("status", -1);
				NoticeUtils.returnMsgToMoile(response, jsonObject);
				return null;
			}
		}
		//判断toType值，并且拿到卖家名字------结束
		addCardCount=num;
		int addCardCount2=0;
		int result=-1;
		String href=null;
		Date cardLTime=person.getCardLTime();
		if (person instanceof Manager) {
			person=manageDao.getManagerById(person.getUserId());
			if (toType!=1) {
				//检查售卖是否足够
				if (sellType==0) {
					if (person.getCardFCount()<num) {
						jsonObject.put("status", -1);
						NoticeUtils.returnMsgToMoile(response, jsonObject);
						return null;
					}
				}else{
					if (person.getCardLCount()<num) {
						jsonObject.put("status", -1);
						NoticeUtils.returnMsgToMoile(response, jsonObject);
						return null;
					}
				}
			}
			switch (toType) {
			case 0:
				sellTypeInCardRecord=1;
				result=proxyService.updateCardCount(buyerId,sellType,num,cardLTime);
				if (result>0) {
					if (sellType==0) {
						person.setCardFCount(person.getCardFCount()-num);
					}else{
						person.setCardLCount(person.getCardLCount()-num);
					}
				}
				break;
			case 1:
				sellTypeInCardRecord=2;
				//售卖给玩家特殊处理
				if (person.getCardLCount()<addCardCount) {
					addCardCount2=addCardCount-person.getCardLCount();
					addCardCount=person.getCardLCount();
				}
				if (person.getCardFCount()<addCardCount2) {
					jsonObject.put("status", -1);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
					return null;
				}
				result=customerService.updateCardCount(buyerId, addCardCount);
				result=customerService.updateCardCount(buyerId, addCardCount2);
				if (result>0) {
					person.setCardLCount(person.getCardLCount()-addCardCount);
					person.setCardFCount(person.getCardFCount()-addCardCount2);
				}
				break;

			case 2:
				sellTypeInCardRecord=0;
				result=mainProxyService.updateCardCount(buyerId, sellType,num,cardLTime);
				if (result>0) {
					if (sellType==0) {
						person.setCardFCount(person.getCardFCount()-num);
					}else{
						person.setCardLCount(person.getCardLCount()-num);
					}
				}
				break;

			default:
				break;
			}
			if(result>0){
				person.setIncome(person.getIncome()+cash);
				result=manageDao.updateManager((Manager) person);
				request.getSession().setAttribute("user", person); 
			}else{
				jsonObject.put("status", -1);
				NoticeUtils.returnMsgToMoile(response, jsonObject);
				return null;
			}
		}
		//管理员售卡完毕---------------完毕
		//总代售卡开始---------------开始
		else if(person instanceof MainProxy){
			person=mainProxyService.getyMainProxyById(person.getUserId());
			href="proxy.do";
			if (toType==0) {
				sellTypeInCardRecord=3;
			}else{
				sellTypeInCardRecord=4;
			}
			//玩家特殊处理---------开始
			if (toType==1) {
				if (person.getCardLCount()<addCardCount) {
					addCardCount2=addCardCount-person.getCardLCount();
					addCardCount=person.getCardLCount();
				}
				if (person.getCardFCount()<addCardCount2) {
					jsonObject.put("status", -1);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
					return null;
				}
				result=mainProxyService.sellCardCount(userId, buyerId, 1, toType, addCardCount,income);
				result=mainProxyService.sellCardCount(userId, buyerId, 0, toType, addCardCount2,income);
				if (result>0) {
					person.setCardLCount(person.getCardLCount()-addCardCount);
					person.setCardFCount(person.getCardFCount()-addCardCount2);
				}else{
					jsonObject.put("status", -1);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
					return null;
				}
				//玩家特殊处理---------结束
			}else if(toType==0){
				//检查售卖是否足够
				if (sellType==0) {
					if (person.getCardFCount()<num) {
						jsonObject.put("status", -1);
						NoticeUtils.returnMsgToMoile(response, jsonObject);
						return null;
					}
				}else{
					if (person.getCardLCount()<num) {
						jsonObject.put("status", -1);
						NoticeUtils.returnMsgToMoile(response, jsonObject);
						return null;
					}
				}
				result=proxyService.updateCardCount(buyerId,sellType,num,cardLTime);
				if (result>0) {
					if (sellType==0) {
						person.setCardFCount(person.getCardFCount()-num);
					}else{
						person.setCardLCount(person.getCardLCount()-num);
					}
				}
			}
			if(result>0){
				mainProxyService.updateMainPorxy((MainProxy)person);
			}else{
				jsonObject.put("status", -1);
				NoticeUtils.returnMsgToMoile(response, jsonObject);
				return null;
			}
			request.getSession().setAttribute("user", person); 
		}else if(person instanceof Proxy){//代理售卡
			person=proxyService.findProxyByID(person.getUserId());
			if (toType==0) {
				sellTypeInCardRecord=5;
			}else{
				sellTypeInCardRecord=6;
			}
			if (toType==1) {
				if (person.getCardLCount()<addCardCount) {
					addCardCount2=addCardCount-person.getCardLCount();
					addCardCount=person.getCardLCount();
				}
				if (person.getCardFCount()<addCardCount2) {
					jsonObject.put("status", -1);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
					return null;
				}
				result=proxyService.sellCardCount(userId, buyerId, 1, toType, addCardCount,income);
				result=proxyService.sellCardCount(userId, buyerId, 0, toType, addCardCount2,income);	

				if (result>0) {
					person.setCardLCount(person.getCardLCount()-addCardCount);
					person.setCardFCount(person.getCardFCount()-addCardCount2);
					proxyService.updateProxy((Proxy)person);
				}else{
					jsonObject.put("status", -1);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
					return null;
				}
			}

		}
		String resultString;
		if(result>=0){
			resultString="成功";
			if (toType==1) {
				cardRecordService.addCardRecord(new CardRecord(person.getUserId(), person.getUsername(), sellTypeInCardRecord, new Date(System.currentTimeMillis()), income, 0, addCardCount, addCardCount2, buyerId, buyerName, memoString));
			}else{
				if (sellType==0) {
					cardRecordService.addCardRecord(new CardRecord(person.getUserId(), person.getUsername(), sellTypeInCardRecord, new Date(System.currentTimeMillis()), income, sellType, 0, num, buyerId, buyerName, memoString));
				}else{
					cardRecordService.addCardRecord(new CardRecord(person.getUserId(), person.getUsername(), sellTypeInCardRecord, new Date(System.currentTimeMillis()), income, sellType, num, 0, buyerId, buyerName, memoString));
				}
			}

			jsonObject.put("status",0);
		}else{
			resultString="失败";
			jsonObject.put("status",-1);
		}
		NoticeUtils.returnMsgToMoile(response, jsonObject);
		return null;
	}
	/**
	 * 登录功能----------移动端
	 * @param request
	 * @param response
	 * @return
	 */

	@RequestMapping(value = "/loginMb", method = {RequestMethod.POST }) 
	@ResponseBody
	public  String  login_mobile(@RequestBody Person body,HttpServletRequest  request,HttpServletResponse response) {
		Person bb=body;
		System.out.println(bb.getUsername());
		String userIdString = body.getUsername();  
		String password = body.getPassword();

		int userId=-1;
		if (StringUtils.isNotEmpty(userIdString)) {
			try {
				userId=Integer.parseInt(userIdString);
			} catch (NumberFormatException e) {
				// NoticeUtils.DadInputError(response);
				e.printStackTrace();
				return null;
			}
		}
		int type=-1;
		String typeString="";
		Person person;

		if (userId<=100) {
			person=manageDao.getManagerById(userId);	
			typeString="管理员";
			type=0;
		}else if(userId>=101&&userId<=1000){
			person=mainProxyService.getyMainProxyById(userId);
			typeString="总代";
			type=1;
		}else{
			person=proxyService.findProxyByID(userId);
			typeString="代理";
			type=2;
		}
		//账号存在
		JSONObject jsonObject2=new JSONObject();
		jsonObject2.put("status",-1);
		if (person !=null) {
			if (person.getPassword().equals(password)) {
				//登陆成功，把user存入session域对象中  
				request.getSession().setAttribute("user", person); 
				request.getSession().setAttribute("userType",type); 
				//重定向到index.jsp  
				jsonObject2.put("uid", person.getUserId());
				jsonObject2.put("nickName", person.getUsername());
				jsonObject2.put("role", typeString);
				jsonObject2.put("flag", type==0?1:-1);
				jsonObject2.put("star",getTodatSellCount(person));
				jsonObject2.put("status",0);
				//	jsonObject2.put("state","success");
				String responseString=jsonObject2.toString();

				try {
					PrintWriter pw = response.getWriter();  
					pw.write(responseString);  
					pw.flush();  
					pw.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  

				/*	try {
						response.sendRedirect(request.getContextPath()+"/index.do");//index page is user info show
					} catch (IOException e) {
						e.printStackTrace();
					}  */
				return null;
			}else{

				try {
					PrintWriter pw = response.getWriter();  
					pw.write(jsonObject2.toString());  
					pw.flush();  
					pw.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
				//	NoticeUtils.handleErrorNotice(response, "密码错误，请重新确认！", "login_pc.jsp");
				//密码错误
				return null;
			}
		}else{
			try {
				PrintWriter pw = response.getWriter();  
				pw.write(jsonObject2.toString());  
				pw.flush();  
				pw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			//账号不存在
			//NoticeUtils.handleErrorNotice(response, "用户不存在，请联系代理或者管理员进行注册！", "login.jsp");
			return null;
		}
	}
	/**
	 * 处理移动端查询玩家操作----------移动端
	 * 查找玩家
	 * @param operator
	 * @param uid
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="/handleOperationInMobile")
	public String testRequestParam(@RequestParam(value="operator") String operator,@RequestParam(value="uid", required=false, defaultValue="") String uidString,HttpServletRequest  request,HttpServletResponse response){
		Person user = (Person) request.getSession().getAttribute("user");
		JSONObject jsonObject=new JSONObject();
		Person person=null;
		if (operator.equals("query")) {
			int uid=-1;
			if (StringUtils.isNotEmpty(uidString)) {
				try {
					uid=Integer.parseInt(uidString);
				} catch (NumberFormatException e) {
					jsonObject.put("status", -1);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
					e.printStackTrace();

				}
			}else{
				jsonObject.put("data","");
			}	
			if (uid<=10) {
				if (PriorityIdentify.isManager(user)) {
					person=manageDao.getManagerById(uid);		
				}else{
					jsonObject.put("status", -2);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
				}

			}else if(uid>=101&&uid<=1000){
				if (PriorityIdentify.isManager(user)) {
					person=mainProxyService.getyMainProxyById(uid);
				}else{
					jsonObject.put("status", -2);
					NoticeUtils.returnMsgToMoile(response, jsonObject);
				}
			}else if(uid>=1001&&uid<100000){
				person=proxyService.findProxyByID(uid);
			}else{
				//玩家的特殊处理-----开始
				List<Customer> customerlist=new ArrayList<Customer>();
				Customer customer=customerService.QueryCustomerById(uid);
				if (customer!=null) {
					customerlist.add(customer);
					jsonObject.put("status", 0);
				}else{
					jsonObject.put("status", -1);
				}
				jsonObject.put("data", JSONArray.fromObject(customerlist).toString());
				NoticeUtils.returnMsgToMoile(response, jsonObject);
				return null;
				//玩家的特殊处理-----结束
			}
			List<Person> list=new ArrayList<Person>();
			if (person!=null) {
				list.add(person);
			}
			jsonObject.put("data", JSONArray.fromObject(list).toString());
			if(StringUtils.isNotEmpty(jsonObject.get("data").toString())){
				jsonObject.put("status", 0);
			}			
		}else if (operator.equals("get_console_info")) {
			if (PriorityIdentify.isManager(user)) {
				person=manageDao.getManagerById(user.getUserId());
			}
			if (PriorityIdentify.isMainProxy(user)) {
				person=mainProxyService.getyMainProxyById(user.getUserId());
			}
			if (PriorityIdentify.isProxy(user)) {
				person=proxyService.findProxyByID(user.getUserId());
			}
			jsonObject.put("status", 0);
			jsonObject.put("name", person.getUsername());
			jsonObject.put("star",getTodatSellCount(person));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if (person.getCardLTime()==null) {
				jsonObject.put("time","暂无");
			}else{
				jsonObject.put("time",sdf.format(person.getCardLTime()));	
			}
			jsonObject.put("numof_cards_1",person.getCardLCount());
			jsonObject.put("numof_cards_2", person.getCardFCount());
		}
		NoticeUtils.returnMsgToMoile(response, jsonObject);

		//response.setContentType("text/html;charset=UTF-8");  
		/*  try {
				PrintWriter pw = response.getWriter();  
				pw.write(responseString);  
				pw.flush();  
				pw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			return "success";*/
		return null;
	}
	@RequestMapping(value = "/logoutMb", method = {RequestMethod.POST }) 
	@ResponseBody
	public  String  logoutMb(@RequestBody String uid,HttpServletRequest  request,HttpServletResponse response) {
		JSONObject jsonObject=new JSONObject();
		request.getSession().setAttribute("user", null); 
		request.getSession().setAttribute("userType",-1); 
		jsonObject.put("status", 0);
		NoticeUtils.returnMsgToMoile(response, jsonObject);
		return null;
	}
	/**
	 * 添加代理----------移动端
	 * @param proxy
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/addproxyMb", method = {RequestMethod.POST }) 
	@ResponseBody
	public  String  addproxy_mb(@RequestBody Proxy proxy,HttpServletRequest  request,HttpServletResponse response) {
		Person person = (Person) request.getSession().getAttribute("user");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out;
		JSONObject jsonObject2=new JSONObject();
		proxy.setCreateTime(new Date(System.currentTimeMillis()));
		if (PriorityIdentify.isMainProxy(person)||PriorityIdentify.isManager(person)) {
			String result=proxyService.addProxy(proxy);
			if ("插入成功".equals(result)) {
				jsonObject2.put("status",0);
			}else{
				jsonObject2.put("status",-1);
			}
		}else{
			jsonObject2.put("status",-1);
		}

		String responseString=jsonObject2.toString();

		try {
			PrintWriter pw = response.getWriter();  
			pw.write(responseString);  
			pw.flush();  
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return null;
	}
	/**
	 * 查看代理列表------------移动端
	 * 代理管理,拿到代理列表
	 * 目前修正，将方法拆开
	 * @return
	 */
	@RequestMapping("/proxyMb")
	public ModelAndView proxyManageMb(@RequestBody String  requestMsg,HttpServletRequest request,HttpServletResponse response){

		Person person = (Person) request.getSession().getAttribute("user");
		//String buyerIdString=request.getParameter("uid");
		int start_index=(int) JSONObject.fromObject(requestMsg).get("start_index");
		int end_index=(int) JSONObject.fromObject(requestMsg).get("end_index");
		PrintWriter out;
		JSONObject jsonObject=new JSONObject();
		//Date startTime=new Date(start_time*1000);
	//	Date endTime=new Date(end_time*1000);;
		ModelAndView model=new ModelAndView("proxy");
		List<Proxy> list=new ArrayList<Proxy>();
		if (PriorityIdentify.isManager(person)) {
			list=proxyService.getAllProxys(start_index, end_index);
		}else if(PriorityIdentify.isMainProxyAndNotice(person, response)){
			list=proxyService.getProxysByIndex(person.getUserId(), start_index, end_index);
			if (list!=null&&list.size()>0) {
				for(Proxy proxy:list){
					proxy.setPassword("");
				}
			}
		}
		//Collections.reverse(list);
		if (list!=null&&list.size()>0) {
			for(Proxy proxy:list){
				proxy.setCreateTimeInMb(proxy.getCreateTime().getTime()/1000);
			}
		}
		jsonObject.put("data", JSONArray.fromObject(list));
		jsonObject.put("status",0);
		try {
			PrintWriter pw = response.getWriter();  
			pw.write(jsonObject.toString());  
			pw.flush();  
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return null;
	}
	//logoutMb
	public int getTodatSellCount(Person person){
		Date todayStart=DateUtil.getDayBegin();
		Date todayEnd=DateUtil.getDayEnd();
		List<CardRecord> todayList=cardRecordService.findCardBySellerIdandTime(person.getUserId(),todayStart, todayEnd);
		int todayCount=0;	
		if (todayList!=null&&todayList.size()>0) {
			for(CardRecord cardRecord:todayList){
				todayCount=todayCount+cardRecord.getCardFCount()+cardRecord.getCardLCount();
			}	
		}

		return todayCount;
	}


}


