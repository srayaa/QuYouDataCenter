package com.dao.customer.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dao.customer.CustomerDao;
import com.dao.customer.mapper.CustomerMapper;
import com.pojo.Customer;
import com.utils.SqlSessionUtil;

@Repository
public class CustomerDaoImpl implements CustomerDao{


	@Override
	public Customer getCustomerByid(int id) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CustomerMapper CustomerMapper = sqlSession.getMapper(CustomerMapper.class);
			Customer Customer=CustomerMapper.findCustomerByID(id);
			sqlSession.commit();
			sqlSession.close();
			return Customer;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public int addCustomer(Customer Customer) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CustomerMapper CustomerMapper = sqlSession.getMapper(CustomerMapper.class);
			int result=CustomerMapper.addCustomer(Customer);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	public void deleteEmployeer(String Customer) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CustomerMapper CustomerMapper = sqlSession.getMapper(CustomerMapper.class);
			CustomerMapper.deleteEmployeer(Customer);
			sqlSession.commit();
			sqlSession.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void updateCustomer(Customer Customer) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CustomerMapper customerMapper = sqlSession.getMapper(CustomerMapper.class);
			customerMapper.updateCustomer(Customer);
			sqlSession.commit();
			sqlSession.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public int updateCardCount(Customer customer) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CustomerMapper customerMapper = sqlSession.getMapper(CustomerMapper.class);
			int result=customerMapper.updateCardCount(customer);
			sqlSession.commit();
			sqlSession.close();
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}





	/*  public Class<Customer> getTclass(){
    	  return Customer.class;
      }*/

	/*	@Override
	public Customer getCustomerByid(int id) {
		Customer Customer=null;
		// TODO Auto-generated method stub
		String queryCustomer="SELECT CustomerID,CustomerName FROM Customer WHERE CustomerID="+id;
		Map Customers=jdbcTemplate.queryForMap(queryCustomer);
		if(Customers.size()>0){
			Customer= new Customer(Integer.parseInt(Customers.get("CustomerID").toString()),Customers.get("CustomerName").toString());
			return Customer;
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
		String test="SELECT CustomerName,RoleName,FunctionName FROM Customer JOIN U_R ON Customer.CustomerID=U_R.CustomerID JOIN Role ON U_R.RoleID=Role.RoleID JOIN R_F ON Role.RoleID=R_F.RoleID JOIN Function ON R_F.FunctionID=Function.FunctionID WHERE CustomerName="+"'"+name+"'";
		String selectPower="SELECT CustomerID,CustomerName,RoleName,FunctionID,FunctionName FROM Customer "+
	"JOIN U-R ON Customer.CustomerID=U-R.CustomerID JOIN Role ON U-R.RoleID=Role.RoleID JOIN "+
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

	/*	public void addCustomer(Customer Customer) {
		// TODO Auto-generated method stub
		String addCustomerString="Insert INTO Customer(CustomerID,CustomerName) VALUES(?,?)";
		jdbcTemplate.update(addCustomerString, new Object[]{Customer.getId(),Customer.getName()},new int[]{Types.INTEGER,Types.CHAR});	

	}
	 */



}
