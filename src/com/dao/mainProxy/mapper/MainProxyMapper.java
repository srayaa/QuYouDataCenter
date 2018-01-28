package com.dao.mainProxy.mapper;


import java.util.Date;
import java.util.List;
import java.util.Map;

import com.pojo.MainProxy;

public interface MainProxyMapper {
	   /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public MainProxy getMainProxyByID(int userId);  
    public List<MainProxy> getMainProxyLikeUsername(String username);  
  
    /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public int addMainProxy(MainProxy user);  
  
    /** 
     * 注意要和Employeer.xml的方法名对应 
     */  
    public void deleteMainProxy(String user);  
  
    /**
     * 注意要和Employeer.xml的方法名对应 
     */  
    public int updateMainProxy(MainProxy user); 
 
    public int updateCardLTime(MainProxy user); 
    
    public int updateCardLCount(MainProxy count); 
 
    
    public int updateCardFCount(MainProxy count); 
    
    public List<MainProxy> getMainProxys(Map<String, Object> paramMap);
    public int getMainProxysCount();
    public int editPassword(MainProxy user);
}
