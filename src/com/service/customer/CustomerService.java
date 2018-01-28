package com.service.customer;

import java.util.Date;
import java.util.List;

import com.pojo.Customer;
import com.pojo.MainProxy;

import net.sf.json.JSONObject;

public interface CustomerService {
	public int updateCardCount(int customerId,int count);
	public Customer QueryCustomerById(int id);
	public int updateCardCountWithoutReport(int customerId, int count);
	public JSONObject queryOneCustomerInMobile(JSONObject jsonObject,String userIdString);
}
