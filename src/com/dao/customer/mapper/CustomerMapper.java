package com.dao.customer.mapper;

import com.pojo.Customer;

public interface CustomerMapper {
	   /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public Customer findCustomerByID(int id);  
  
    /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public int addCustomer(Customer Customer);  
  
    /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public void deleteEmployeer(String Customer);  
  
    /**
     * 注意要和Employeer.xml的方法名对应 
     */  
    public int updateCustomer(Customer Customer); 
    /**
     * 注意要和Employeer.xml的方法名对应 
     */ 
    public int updateCardCount(Customer Customer); 
    /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public Customer findCustomerByRecommandID(String recommandId); 
    public int editPassword(String newPassword);
}
