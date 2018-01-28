package com.utils;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.slf4j.migrator.Main;
import org.springframework.beans.factory.annotation.Autowired;

import com.dao.proxy.ProxyDao;
import com.dao.proxy.impl.ProxyDaoImpl;
import com.pojo.Proxy;

public class SqlSessionUtil {
//	@Autowired
//	ProxyDao proxyDao;

	private static SqlSessionFactory sessionFactory;

	public static SqlSession getSqlSession() throws Exception{

		if(sessionFactory==null){
			String resource = "conf.xml";
			//使用类加载器加载mybatis的配置文件（它也加载关联的映射文件）
			InputStream is = Resources.getResourceAsStream(resource);
			//构建sqlSession的工厂
			 sessionFactory = new SqlSessionFactoryBuilder().build(is);
			//创建能执行映射文件中sql的sqlSession
		}
		SqlSession sqlSession = sessionFactory.openSession();
		return sqlSession;
	}
	//经检测，重复构建SqlSessionFactory的效率对比，几乎是5倍
//	public static void main(String[] args) {
//		long start_Time=System.currentTimeMillis();
//		for (int i = 0; i < 1000; i++) {
//			System.out.println("游戏开始");
//			ProxyDao proxyDao=new ProxyDaoImpl();
//			List<Proxy> a=proxyDao.getAllProxys(null, null, -1, -1);
//			System.out.println(a.size());
//		}
//		long end_Time=System.currentTimeMillis();	
//		
//		
//		System.out.println("间隔时间"+(end_Time-start_Time));
//	}
}
