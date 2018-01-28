package com.service.mainProxy;

import java.util.Date;
import java.util.List;

import com.pojo.MainProxy;
import com.service.base.BaseService;


public interface MainProxyService extends BaseService<MainProxy>{
	public MainProxy getyMainProxyById(int id);
	public String addUser(MainProxy user);
	/**
	 * 处理总代赠送和销售
	 * @param user
	 * @param edUserId
	 * @param type   0销售。1赠送
	 * @param toType    0目标代理，1目标玩家
	 * @param count
	 * @return
	 */
	 public int sellCardCount(int userId,int edUserId,int type,int toType,int count,int income);
	/**
	 * 管理员给总代送卡
	 * @param mainProxyId
	 * @param sellType
	 * @param count
	 * @param cardLTime
	 * @return
	 */
	 public int updateCardCount(int mainProxyId,int sellType,int count,Date cardLTime);
	 public List<MainProxy> getMainProxys(int startIndex,int length);
	 public int getMainProxysCount();
	 public int updateMainPorxy(MainProxy mainProxy);
	/*public Map<String,Object> getPowerByName(String name);*/
	/*public void save(User user);*/
}
