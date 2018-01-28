package com.service.proxy.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.proxy.ProxyDao;
import com.pojo.CardRecord;
import com.pojo.MainProxy;
import com.pojo.Proxy;
import com.service.customer.CustomerService;
import com.service.proxy.ProxyService;

@Service
public class ProxyServiceImpl implements ProxyService{

	@Autowired
	ProxyDao proxyDao;
	
	@Autowired
	CustomerService customerService;
	
	@Override
	public Proxy findProxyByID(int id) {
		// TODO Auto-generated method stub
		return proxyDao.findProxyByID(id);
	}

	@Override
	public String addProxy(Proxy proxy) {
		// TODO Auto-generated method stub
		int result=-1;
		StringBuffer stringBuffer=new StringBuffer();
		for (int i = 0; i < 7; i++) {
			stringBuffer.append((int)(Math.random()*10));	
		}
		proxy.setInitPassword(stringBuffer.toString());
		proxy.setPassword(stringBuffer.toString());
		result=proxyDao.addProxy(proxy);
		if (result>0) {
			return "插入成功";
		}else{
			return "插入失败";
		}
	}

	@Override
	public void deleteProxy(String proxyId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int updateProxy(Proxy proxy) {
		return proxyDao.updateProxy(proxy);
	}



	@Override
	public List<Proxy> getProxysByRecommendID(int recommendId,int startIndex,int length) {
		return proxyDao.getProxysByRecommendID(recommendId,startIndex,length);
	}

	/**
	 * 根据销售类型，变更代理的房卡数
	 */
	@Override
	public int updateCardCount(int proxyId, int type,int cardCount,Date cardLTime) {
		Proxy proxy= proxyDao.findProxyByID(proxyId);
		int result=-1;
		if (type==0) {
			proxy.setCardFCount(proxy.getCardFCount()+cardCount);
			result=proxyDao.updateFCardCount(proxy);
		}else if(type==1){
			proxy.setCardLTime(cardLTime);
			proxy.setCardLCount(proxy.getCardLCount()+cardCount);
			result=proxyDao.updateLCardCount(proxy);
		}
		return result;
	}
	/**
	 * 根据销售类型，变更代理的房卡数
	 */
	@Override
	public int updateCardCount(int proxyId, int type,int cardCount) {
		Proxy proxy= proxyDao.findProxyByID(proxyId);
		int result=-1;
		if (type==0) {
			proxy.setCardFCount(proxy.getCardFCount()+cardCount);
			result=proxyDao.updateFCardCount(proxy);
		}else if(type==1){
			proxy.setCardLCount(proxy.getCardLCount()+cardCount);
			result=proxyDao.updateLCardCount(proxy);
		}
		return result;
	}
	/**
	 * 根据销售类型，变更代理的房卡数
	 */
	public int updateCardCount(Proxy proxy, int type,int cardCount) {
		int result=-1;
		if (type==0) {
			proxy.setCardFCount(proxy.getCardFCount()+cardCount);
			result=proxyDao.updateFCardCount(proxy);
		}else if(type==1){
			proxy.setCardLCount(proxy.getCardLCount()+cardCount);
			result=proxyDao.updateLCardCount(proxy);
		}
		return result;
	}

	@Override
	public List<Proxy> getAllProxys(int startIndex,int length) {
		// TODO Auto-generated method stub
		return proxyDao.getAllProxys(null,null,startIndex, length);
	}


	@Override
	public int sellCardCount(int userId, int edUserId, int type, int toType, int count,int income) {
		Proxy proxy=findProxyByID(userId);
		Date cardLTime=proxy.getCardLTime();
		int result=-1;
		if (toType==0) {//处理被操作代理
			result=updateCardCount(edUserId,type,count,cardLTime);
		}else if (toType==1) {//玩家
				result=customerService.updateCardCount(edUserId, count);
		}
		if(result>=0){
			//赠送成功的情况下，修改自身数据
			proxy.setIncome(proxy.getIncome()+income);
			result=updateCardCount(proxy, type,-count);
			//给自己更新数据失败，扣除之前操作
			if (result<=0) {
				if (toType==0) {//处理被操作代理
					result=updateCardCount(edUserId,type,-count);
				}else if (toType==1) {//玩家
					result=customerService.updateCardCount(edUserId,-count);
				}	
			}
		}
		return result;
	}

	@Override
	public int editPassword(Proxy person) {
		// TODO Auto-generated method stub
		return proxyDao.editPassword(person);
	}

	@Override
	public List<Integer> getProxyIdsByRecommendID(int recommendPerson) {
		return proxyDao.getProxyIdsByRecommendID(recommendPerson);
	}

	@Override
	public List<Proxy> getPersonLikeUsername(String username) {
		return proxyDao.getPersonLikeUsername(username);
	}

	@Override
	public List<Proxy> getProxysByTime(int id, Date crTime, Date enTime) {
		return proxyDao.getProxys(id, crTime, enTime,-1,-1);
	}

	@Override
	public List<Proxy> getAllProxys(Date startTime, Date endTime) {
		// TODO Auto-generated method stub
		return proxyDao.getAllProxys(startTime, endTime, -1, -1);
	}

	@Override
	public int getProxysByRecommendIDCount(int recommendId) {
		return proxyDao.getProxysByRecommendIDCount(recommendId);
	}

	@Override
	public int getAllProxysCount() {
		return proxyDao.getAllProxysCount();
	}

	@Override
	public List<Proxy> getProxysByIndex(int id, int startIndex, int length) {
		return proxyDao.getProxys(id, null, null,startIndex,length);
	}

	

}
