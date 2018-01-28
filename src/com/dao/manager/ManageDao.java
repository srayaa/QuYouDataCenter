package com.dao.manager;

import com.dao.base.BaseDao;
import com.pojo.MainProxy;
import com.pojo.Manager;

public interface ManageDao extends BaseDao<Manager>{
   public Manager getManagerById(int userId);
   public int updateManager(Manager manager);
}
