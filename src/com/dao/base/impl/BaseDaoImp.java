package com.dao.base.impl;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.dao.mainProxy.mapper.MainProxyMapper;
import com.utils.SqlSessionUtil;

public class BaseDaoImp<T> {
	@Autowired  
	protected JdbcTemplate jdbcTemplate; 
	/*@Resource
    private SessionFactory sessionFactory;*/
	private Class<T> clazz;
	/* *//** 具体操作的实体类对象 */
	private Class<T>       entityClass;
	
	
	
	//** 名称加工处理器 *//*  
	//  private NameHandler    nameHandler;  

	//** spring jdbcTemplate 对象 */



	/*  public BaseDaoImp(){
   // Type : Type is the common super interface for all types in the Java programming language
    	Type superclass = getClass().getGenericSuperclass(); 
    	//ParameterizedType 表示参数化类型
    	ParameterizedType type = (ParameterizedType) superclass;
    	//返回表示此类型实际类型参数的 Type 对象的数组。
    	 clazz = (Class<T>) type.getActualTypeArguments()[0]; 
    }*/


	/*public Class<T> getTclass(){
		return clazz;
	}*/
	public BaseDaoImp(){
		ParameterizedType pt =(ParameterizedType) this.getClass().getGenericSuperclass();
		//获取第一个类型参数的真实类型
		this.clazz = (Class<T>) pt.getActualTypeArguments()[0];
		System.out.println("clazz--->"+clazz);
		
	}


	/*public BaseDaoImp(){
		  ParameterizedType pt =(ParameterizedType) this.getClass().getGenericSuperclass();
	        //获取第一个类型参数的真实类型
	        this.clazz = (Class<T>) pt.getActualTypeArguments()[0];
	        System.out.println("clazz--->"+clazz);
	}*/
	/*@Override
	public void add(Object t) {
		// TODO Auto-generated method stub


	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Object t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void select(String name) {
		// TODO Auto-generated method stub

	}

	 protected NameHandler getNameHandler() {  
	        return new DefaultNameHandler();  
	    }  
	 */

	public void save(Object entity) {
		// TODO Auto-generated method stub
		System.out.println(clazz.getName());

	}

	public void delete(Long id) {
		// TODO Auto-generated method stub

	}

	public void update(Object entity) {
		// TODO Auto-generated method stub
		 //  SqlSession sqlSession = SqlSessionUtil.getSqlSession();
	      //  UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
	       // userMapper.createTable("t_user");
	      //  sqlSession.commit();
	      //  sqlSession.close();
	}

	public void add(T t){
		try {
            //拿到所有方法的描述
			Method[] methods=clazz.getMethods();
			Method id_method;
			Method name_method;
			Method password_method;
			//生命将要存入的属性结果值
			String id_res_string=null;
			String name_res=null;
			String password_res=null;
			StringBuilder stringBuilder=null;//记录数据参数的位置
			
			//1.循环遍历拿到各属性名的值
			for(Method method:methods){
				//String name;
				if (method.getName().contains("get")) {
					if(method.getName().contains("id")){
						id_res_string=String.valueOf(method.invoke(t));
					}
					if(method.getName().contains("name")){
						name_res=(String)method.invoke(t);
					}
					if(method.getName().contains("password")){
						password_res=(String)method.invoke(t);
					}
					
				} 
			}
			//获取表名和数据库列名的前缀
			String sqlString=null;
			String tab_name=clazz.getSimpleName().toLowerCase();
			String jointPreString=null;
			if(tab_name.length()>4){
				jointPreString=tab_name.substring(0,4);
			}
			else{
				jointPreString=tab_name;
			}
			//获取所有的属性的名称
			Field[] fields=clazz.getDeclaredFields();
			
			//2.开始拼接前半句
			StringBuilder stringSql=new StringBuilder("INSERT INTO ");
			stringSql.append(tab_name).append("(");
			//Map<String,String> map_field_name=new HashMap<String,String>();
			List<String> list_field_name=new ArrayList<String>();
			stringBuilder=new StringBuilder();
			
			//循环拼接sql前半句
			for(Field field:fields){
				String fieldname=field.getName();
				if(fieldname.contains("id")){
					String temporary=jointPreString+"_id";
					stringSql.append(temporary).append(",");
					//记录数字项的位置
					stringBuilder.append(list_field_name.size()-1);
					//在list_field_name中，记录sql后半句的注值顺序
					list_field_name.add(id_res_string);
					
					//.add(fieldname);
				}
				if(fieldname.contains("name")){
					String temporary=jointPreString+"_name";
					stringSql.append(temporary).append(",");
					list_field_name.add(name_res);
					
				}
				if(fieldname.contains("password")){
					String temporary=jointPreString+"_password";
					stringSql.append(temporary).append(",");
					list_field_name.add(password_res);
					
				}
				
				
			}
			//3.删除多余添加的都好，并开始添加sql语句的后半句
			stringSql.deleteCharAt(stringSql.length()-1).append(") VALUE (");
		
			
			
			//记录的数字项位置
			char[] char_index=stringBuilder.toString().toCharArray();
			for(String s:list_field_name){
				//引入char_index判断当前的s是否为数字或字符，分别处理
					for(char c:char_index){
						if (Integer.valueOf(c)==list_field_name.indexOf(s)) {
							stringSql.append(s).append(",");			
						}
					}
					stringSql.append("'").append(s).append("',");	
					System.out.println(s);
					
				
				
			}
			stringSql.deleteCharAt(stringSql.length()-1).append(")");
			
			System.out.println(stringSql.toString());
			jdbcTemplate.execute(stringSql.toString());
			
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	};
	/**
	 * 提供根据id 查询所有列 并且返回
	 * @param id
	 * @return
	 */
	public T getUserByid(int id) {
		// TODO Auto-generated method stub
		T invokeTester =null;
		// TODO Auto-generated method stub
		String prenameString=clazz.getSimpleName().toLowerCase();
		String edname=prenameString.substring(0,4);
		String name=edname+"_id";
		if(prenameString.length()>4){

		}
		String queryUser="SELECT * FROM User WHERE "+name+"="+id;
		Map users=jdbcTemplate.queryForMap(queryUser);
		if(users.size()>0){
			invokeTester =null;
			try {
				invokeTester = clazz.newInstance();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			for(Iterator ite = users.entrySet().iterator(); ite.hasNext();){  
				Map.Entry entry = (Map.Entry) ite.next();  
				String key = (String)entry.getKey();  
				Object value = entry.getValue();
				
				PropertyDescriptor pd;

				try {
					pd = new PropertyDescriptor(key, clazz);
					Method wM = pd.getWriteMethod();//获得写方法
					wM.invoke(invokeTester, value);//因为知道是int类型的属性，所以传个int过去就是了。。实际情况中需要判断下他
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}  

		}
		return invokeTester;
	}
}
