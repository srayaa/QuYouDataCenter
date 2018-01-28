package com.dao.mainProxy;

import java.util.Date;
import java.util.List;

import com.dao.base.BaseDao;
import com.pojo.Customer;
import com.pojo.MainProxy;


public interface MainProxyDao extends BaseDao<MainProxy> {
      /*public User getUserByid(int id);
        public Map<String,Object> getPowerByName(String name);
        public void addUser(User user);
        public void save(User user);*/
	 public MainProxy getUserByid(int id);
	 public int addUser(MainProxy user);
	 public int updateCardLTime(MainProxy mainProxy);
	 public int updateCardLCount(MainProxy mainProxy);
	 public int updateCardFCount(MainProxy mainProxy);
	 public List<MainProxy> getMainProxys(int startIndex,int length);
	 public int getMainProxysCount();
	 public int updateMainProxy(MainProxy mainProxy);
}
