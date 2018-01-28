package com.dao.mainProxy.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dao.base.impl.BaseDaoImp;
import com.dao.mainProxy.MainProxyDao;
import com.dao.mainProxy.mapper.MainProxyMapper;
import com.pojo.CardRecord;
import com.pojo.Customer;
import com.pojo.MainProxy;
import com.utils.SqlSessionUtil;
import com.utils.ValidateUtils;

@Repository
public class MainProxyDaoImp  implements MainProxyDao{

	@Override
	public MainProxy getUserByid(int id) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			MainProxy user=userMapper.getMainProxyByID(id);
			sqlSession.commit();
			sqlSession.close();
			return user;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public int addUser(MainProxy user) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			int result=userMapper.addMainProxy(user);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	public void deleteEmployeer(String user) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			userMapper.deleteMainProxy(user);
			sqlSession.commit();
			sqlSession.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	@Override
	public int updateMainProxy(MainProxy mainProxy) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			int result=userMapper.updateMainProxy(mainProxy);
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
	public int updateCardFCount(MainProxy mainProxy) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			int result=userMapper.updateCardFCount(mainProxy);
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
	public int updateCardLCount(MainProxy mainProxy) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			int result=userMapper.updateCardLCount(mainProxy);
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
	public List<MainProxy> getMainProxys(int startIndex,int length) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			List<MainProxy> list=userMapper.getMainProxys(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return list;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	@Override
	public int getMainProxysCount(){
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			int result=userMapper.getMainProxysCount();
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	};
	
	public int updateCardLTime(MainProxy mainProxy) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			int result=userMapper.updateCardLTime(mainProxy);
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
	public int editPassword(MainProxy person) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
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
	public List<MainProxy> getPersonLikeUsername(String username) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			MainProxyMapper userMapper = sqlSession.getMapper(MainProxyMapper.class);
			List<MainProxy> list=userMapper.getMainProxyLikeUsername(username);
			sqlSession.commit();
			sqlSession.close();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}



	/*  public Class<User> getTclass(){
    	  return User.class;
      }*/

	/*	@Override
	public User getUserByid(int id) {
		User user=null;
		// TODO Auto-generated method stub
		String queryUser="SELECT UserID,UserName FROM User WHERE UserID="+id;
		Map users=jdbcTemplate.queryForMap(queryUser);
		if(users.size()>0){
			user= new User(Integer.parseInt(users.get("userID").toString()),users.get("userName").toString());
			return user;
		}
		else {
			System.out.println("没有结果");
			return null;
		}


	}*/

	/*@Override
	public Map<String,Object> getPowerByName(String name) {
		// TODO Auto-generated method stub
		Map<String, Object> map;
		String test="SELECT UserName,RoleName,FunctionName FROM User JOIN U_R ON User.UserID=U_R.UserID JOIN Role ON U_R.RoleID=Role.RoleID JOIN R_F ON Role.RoleID=R_F.RoleID JOIN Function ON R_F.FunctionID=Function.FunctionID WHERE UserName="+"'"+name+"'";
		String selectPower="SELECT UserID,UserName,RoleName,FunctionID,FunctionName FROM User "+
	"JOIN U-R ON User.UserID=U-R.UserID JOIN Role ON U-R.RoleID=Role.RoleID JOIN "+
	"R-F ON Role.RoleID=R-F.RoleID JOIN Function ON R-F.FunctionID=Function.FunctionID";
		map=jdbcTemplate.queryForMap(test);
		if (map.size()>0) {
			System.out.println("map的大小="+map.size());
			return map;	

		}
		else {
			System.out.println("查询权限的结果为空");
			return null;
		}


	}*/

	/*	public void addUser(User user) {
		// TODO Auto-generated method stub
		String addUserString="Insert INTO User(UserID,UserName) VALUES(?,?)";
		jdbcTemplate.update(addUserString, new Object[]{user.getId(),user.getName()},new int[]{Types.INTEGER,Types.CHAR});	

	}
	 */



}
