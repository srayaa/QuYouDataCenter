package com.dao.manager.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dao.mainProxy.mapper.MainProxyMapper;
import com.dao.manager.ManageDao;
import com.dao.manager.mapper.ManagerMapper;
import com.pojo.MainProxy;
import com.pojo.Manager;
import com.utils.SqlSessionUtil;

@Repository
public class ManageDaoImpl implements ManageDao{
	@Override
	public Manager getManagerById(int userId) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ManagerMapper userMapper = sqlSession.getMapper(ManagerMapper.class);
			Manager user=userMapper.findManagerByID(userId);
			sqlSession.commit();
			sqlSession.close();
			return user;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/*@Override
	public int editPassword(Manager person) {
		try {
			sqlSession = SqlSessionUtil.getSqlSession();
			ManagerMapper userMapper = sqlSession.getMapper(ManagerMapper.class);
			int result=userMapper.editPassword(person);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}*/
	public int editPassword(Manager person) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ManagerMapper userMapper = sqlSession.getMapper(ManagerMapper.class);
			int result=userMapper.editPassword(person);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	@Override
	public int updateManager(Manager manager) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ManagerMapper userMapper = sqlSession.getMapper(ManagerMapper.class);
			int result=userMapper.updateManager(manager);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	@Override
	public List<Manager> getPersonLikeUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}


}
