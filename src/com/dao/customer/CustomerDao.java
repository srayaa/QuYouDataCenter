package com.dao.customer;

import com.pojo.Customer;

public interface CustomerDao {
	 public int updateCardCount(Customer user);
	 public Customer getCustomerByid(int id);
	 
}
