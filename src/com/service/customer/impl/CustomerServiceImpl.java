package com.service.customer.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dao.customer.CustomerDao;
import com.pojo.Customer;
import com.service.customer.CustomerService;
import com.utils.CodeUtils;
import com.utils.ConfigUtil;
import com.utils.HMACSHA1;
import com.utils.HttpRequest;
import com.utils.StringUtils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDao customerDao;
	
/*	@Override
	@Transactional
	public int updateCardCount(String edCustomerId,int type,int count) {
		Customer edCustomer=customerDao.getCustomerByid(edCustomerId);
		edCustomer.setCardCount(edCustomer.getCardCount()+count);
		int result=customerDao.updateCardCount(edCustomer);
		if (result==1) {
			user.setCardFCount(user.getCardFCount()-count);
			if (type==1) {
				//处理玩家的身上额入账情况，此处暂时空缺**************************************
			}
		}else{
			return -1;
		}
		return -1;
	}
*/
	@Override
	public Customer QueryCustomerById(int id) {
		Customer customer=customerDao.getCustomerByid(id);
		return customer;
	}

	@Override
	public int updateCardCount(int customerId, int count) {
		Customer customer= customerDao.getCustomerByid(customerId);
		customer.setCardCount(customer.getCardCount()+count);
		int result=customerDao.updateCardCount(customer);
		boolean reportResult=false;;
		if (result>0) {
			long date=System.currentTimeMillis();
			byte[] signatureByte=null;//amb8zBsIYwkbuEdi7dZnsjHgnItZtz
			String signature=null;//H59y0x7r66T8WrcwAgKbNzwWw2npW9
			try {
				signatureByte=HMACSHA1.HmacSHA1Encrypt(date+":"+customerId,ConfigUtil.getSignature());
				signature=CodeUtils.encodeBase64(signatureByte);
				StringBuffer stringBuffer=new StringBuffer();
				stringBuffer.append("user_uid=").append(customerId);
				stringBuffer.append("&date=");
				stringBuffer.append(date);
				stringBuffer.append("&signature=");
				stringBuffer.append(signature);
				reportResult=HttpRequest.sendPost("http://"+ConfigUtil.getIp_info()+"/refresh?", stringBuffer.toString());	
			} catch (Exception e) {
				e.printStackTrace();
			}
			//reportResult=true;//测试使用
			if (!reportResult) {
				updateCardCountWithoutReport(customerId,-count);
				return -1;
			}else{
				return result;
			}
		}
		return -1;
	}
	@Override
	public int updateCardCountWithoutReport(int customerId, int count) {
		Customer customer= customerDao.getCustomerByid(customerId);
		customer.setCardCount(customer.getCardCount()+count);
		int result=customerDao.updateCardCount(customer);
		return result;
	}
/**
 * 暂时废弃
 */
	@Override
	public JSONObject queryOneCustomerInMobile(JSONObject jsonObject,String userIdString) {

		int userId=-1;
		System.out.println("查询代理");

		if (StringUtils.isNotEmpty(userIdString)) {
			try {
				userId=Integer.parseInt(userIdString);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				return jsonObject;
			}
		}else{
			jsonObject.put("data","");
		}
		List<Customer> list=new ArrayList<Customer>();
		Customer customer=QueryCustomerById(userId);
		if (customer!=null) {
			list.add(customer);
		}
		jsonObject.put("data", JSONArray.fromObject(list).toString());
	/*	jsonObject.put("uid", person.getUserId());
		jsonObject.put("nickName", person.getUsername());
		jsonObject.put("role", type);
		jsonObject.put("star", 100);
		jsonObject.put("status",0);
		jsonObject.put("state","success");*/
		return jsonObject;
	
	}
	

}
