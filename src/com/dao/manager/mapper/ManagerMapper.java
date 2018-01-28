package com.dao.manager.mapper;


import java.util.Date;

import com.pojo.MainProxy;
import com.pojo.Manager;

public interface ManagerMapper {
	   /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public Manager findManagerByID(int id);  
  
    /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public int addManager(Manager user);  
  
    /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public void deleteManager(Manager user);  
  
    /**
     * 注意要和Employeer.xml的方法名对应 
     */  
    public int updateManager(Manager user); 
 
    public int updateCardLTime(Date date); 
    public int editPassword(Manager user);
    
    
}
