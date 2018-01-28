package com.dao.proxy.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dao.cardRecord.mapper.CardRecordMapper;
import com.dao.proxy.ProxyDao;
import com.dao.proxy.mapper.ProxyMapper;
import com.pojo.CardRecord;
import com.pojo.MainProxy;
import com.pojo.Proxy;
import com.utils.SqlSessionUtil;
import com.utils.ValidateUtils;

@Repository
public class ProxyDaoImpl implements ProxyDao{


	@Override
	public Proxy findProxyByID(int id) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			Proxy result=proxyMapper.findProxyByID(id);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	@Override
	public int addProxy(Proxy user) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.addProxy(user);
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
	public int deleteProxy(int userId) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.deleteProxy(userId);
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
	public int updateProxy(Proxy user) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.updateProxy(user);
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
	public int updateLCardCount(Proxy user) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.updateLCardCount(user);
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
	public int updateFCardCount(Proxy user) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.updateFCardCount(user);
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
	public List<Proxy> getProxysByRecommendID(int recommendId,int startIndex,int length) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			paramMap.put("recommendId", recommendId);
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			List<Proxy> list=proxyMapper.getProxysByRecommendID(paramMap);
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
	public int getProxysByRecommendIDCount(int recommendId) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.getProxysByRecommendIDCount(recommendId);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;

	}
	
	@Override
	public int editPassword(Proxy person) {
		try {
			SqlSession 	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.editPassword(person);
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
	public List<Integer> getProxyIdsByRecommendID(int recommendPerson) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			List<Integer> list=proxyMapper.getProxyIdsByRecommendID(recommendPerson);
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
	public List<Proxy> getPersonLikeUsername(String username) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			List<Proxy> list=proxyMapper.getProxyLikeUsername(username);
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
	public List<Proxy> getAllProxys(Date startTime,Date endTime,int startIndex,int length) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			if (ValidateUtils.isValidatedDate(startTime,endTime)) {
				paramMap.put("startTime", startTime);
				paramMap.put("endTime", endTime);	
			}

			List<Proxy> list=proxyMapper.getAllProxys(paramMap);
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
	public int getAllProxysCount() {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			int result=proxyMapper.getAllProxysCount();
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Proxy> getProxys(int id, Date crTime, Date enTime,int startIndex,int length) {

		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			ProxyMapper proxyMapper = sqlSession.getMapper(ProxyMapper.class);
			HashMap<String, Object> paramMap=new HashMap<String, Object>();
			paramMap.put("id", id);
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			if (ValidateUtils.isValidatedDate(crTime,enTime)) {
				paramMap.put("startTime", crTime);
				paramMap.put("endTime", crTime);	
			}
			List<Proxy> cardRecord=proxyMapper.getProxys(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	

	}

}
