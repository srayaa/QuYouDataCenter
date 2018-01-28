package com.dao.proxy;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.dao.base.BaseDao;
import com.pojo.CardRecord;
import com.pojo.Proxy;

public interface ProxyDao extends BaseDao<Proxy>{

	   /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public Proxy findProxyByID(int id);  

 /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public int addProxy(Proxy user);  

 /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public int deleteProxy(int userId);  

 /**
  * 注意要和Employeer.xml的方法名对应 
  */  
 public int updateProxy(Proxy user); 
 
 public int updateLCardCount(Proxy user);
 
 public int updateFCardCount(Proxy user);
 
 public List<Proxy> getProxysByRecommendID(int recommendId,int startIndex,int length);
 public int getProxysByRecommendIDCount(int recommendId);
 //-----------------------------------
 public List<Proxy> getAllProxys(Date startTime,Date endTime,int startIndex,int length);
 public int getAllProxysCount();

 public List<Integer> getProxyIdsByRecommendID(int recommendPerson);
 public List<Proxy> getProxys(int id, Date crTime, Date enTime,int startIndex,int length);
}
