package com.service.proxy;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.pojo.CardRecord;
import com.pojo.Proxy;
import com.service.base.BaseService;

public interface ProxyService extends BaseService<Proxy> {
	   /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public Proxy findProxyByID(int id);  

 /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public String addProxy(Proxy proxy);  

 /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public void deleteProxy(String proxyId);  

 /**
  * 注意要和Employeer.xml的方法名对应 
  */  
 public int updateProxy(Proxy proxy); 
 
 /**
  * 代理买卡
  * @param proxyId
  * @param type
  * @param cardCount
  * @param cardLTime
  * @return
  */
 public int updateCardCount(int proxyId,int type,int cardCount,Date cardLTime);

 
 public List<Proxy> getProxysByRecommendID(int recommendId,int startIndex,int length);
 public List<Proxy> getAllProxys(int startIndex,int length);
 public List<Proxy> getAllProxys(Date startTime,Date endTime);
 /**
  * 代理售卡
  * @param userId
  * @param edUserId
  * @param type
  * @param toType
  * @param count
  * @param income
  * @param cardLTime
  * @return
  */
 public int sellCardCount(int userId,int edUserId,int type,int toType,int count,int income);
 /**
  * 单纯更新房卡数
  * @param proxyId
  * @param type
  * @param cardCount
  * @return
  */
 public int updateCardCount(int proxyId,int type,int cardCount);
 
 public List<Integer> getProxyIdsByRecommendID(int recommendPerson);
 
 public List<Proxy> getProxysByTime(int id,Date crTime,Date enTime);
 public List<Proxy> getProxysByIndex(int id,int startIndex,int length);
 
 
 public int getProxysByRecommendIDCount(int recommendId);
 //-----------------------------------
 public int getAllProxysCount();
 
}
