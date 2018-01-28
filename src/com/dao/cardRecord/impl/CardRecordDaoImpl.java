package com.dao.cardRecord.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dao.cardRecord.CardRecordDao;
import com.dao.cardRecord.mapper.CardRecordMapper;
import com.pojo.CardRecord;
import com.utils.SqlSessionUtil;
import com.utils.ValidateUtils;

@Repository
public class CardRecordDaoImpl implements CardRecordDao{

	public void addCardRecord(CardRecord Card) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			cardMapper.addCardRecord(Card);
			sqlSession.commit();
			sqlSession.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List<CardRecord> findCardBySellerIdandTime(int id,Date startTime,Date endTime,int startIndex,int length) {
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			paramMap.put("id", id);
			if (ValidateUtils.isValidatedDate(startTime,endTime)) {
				paramMap.put("startTime", startTime);
				paramMap.put("endTime", endTime);	
			}
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			//统一修改mybatis
			List<CardRecord> cardRecord=cardMapper.findCardBySellerIdandTime(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}
	
	@Override
	public List<CardRecord> findCardByBuyerIdandTime(int id,Date startTime,Date endTime,int startIndex,int length){
		try {
			SqlSession	sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			paramMap.put("id", id);
			if (ValidateUtils.isValidatedDate(startTime,endTime)) {
				paramMap.put("startTime", startTime);
				paramMap.put("endTime", endTime);	
			}
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			//统一修改mybatis
			List<CardRecord> cardRecord=cardMapper.findCardByBuyerIdandTime(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}
	@Override
	public List<CardRecord> getAllCardRecord(Date startTime,Date endTime,int startIndex,int length) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			if (ValidateUtils.isValidatedDate(startTime,endTime)) {
				paramMap.put("startTime", startTime);
				paramMap.put("endTime", endTime);	
			}
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			//统一修改mybatis
			List<CardRecord> cardRecord=cardMapper.getAllCardRecord(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

/*	@Override
	public List<CardRecord> getCardRecordByTime(Date startTime,Date endTime,int startIndex,int length) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			HashMap<String, Object> date=new HashMap<String, Object>();
			date.put("startTime", crTime);
			date.put("endTime", endTime);
			date.put("startIndex", startIndex);
			date.put("length", length);
			List<CardRecord> cardRecord=cardMapper.getCardRecordByTime(date);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}*/

/*	@Override
	public List<CardRecord> findCardBySellerIdandTime(int id, Date crTime, Date endTime) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			HashMap<String, Object> date=new HashMap<String, Object>();
			date.put("id", id);
			date.put("startTime", crTime);
			date.put("endTime", endTime);
			List<CardRecord> cardRecord=cardMapper.findCardBySellerIdandTime(date);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}*/

/*	@Override
	public List<CardRecord> findCardByBuyerIdandTime(int id, Date crTime, Date endTime) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			HashMap<String, Object> date=new HashMap<String, Object>();
			date.put("id", id);
			date.put("startTime", crTime);
			date.put("endTime", endTime);
			List<CardRecord> cardRecord=cardMapper.findCardByBuyerIdandTime(date);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}*/

	@Override
	public List<CardRecord> findCardRecordsInGroup(List<Integer> sellerIds,Date startTime,Date endTime,int startIndex,int length) {
		// TODO Auto-generated method stub
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
//			HashMap<String, Object> date=new HashMap<String, Object>();
//			date.put("sellerIds", id);
//			date.put("startIndex", startIndex);
//			date.put("endIndex", endIndex);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			paramMap.put("sellerIds", sellerIds);
			if (ValidateUtils.isValidatedDate(startTime,endTime)) {
				paramMap.put("startTime", startTime);
				paramMap.put("endTime", endTime);	
			}
			if (ValidateUtils.isValidatedIndex(startIndex,length)) {
				paramMap.put("startIndex", startIndex);
				paramMap.put("length", length);	
			}
			//统一修改mybatis
			List<CardRecord> cardRecord=cardMapper.findCardRecordsInGroup(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return cardRecord;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int findCountByTimeAndId(int id,Date startTime, Date endTime) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			paramMap.put("id", id);
			if (ValidateUtils.isValidatedDate(startTime,endTime)) {
				paramMap.put("startTime", startTime);
				paramMap.put("endTime", endTime);	
			}
			int count=cardMapper.findCountByTimeAndId(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}
	return 0;
	}

	@Override
	public int getCountByTime(Date startTime, Date endTime) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
//			HashMap<String, Object> date=new HashMap<String, Object>();
//			date.put("id", id);
//			date.put("startTime", startTime);
//			date.put("endTime", endTime);
			Map<String, Object> paramMap=new HashMap<String, Object>();
			if (ValidateUtils.isValidatedDate(startTime,endTime)) {
				paramMap.put("startTime", startTime);
				paramMap.put("endTime", endTime);	
			}
			//统一修改mybatis
			int count=cardMapper.getCountByTime(paramMap);
			sqlSession.commit();
			sqlSession.close();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}
	return 0;
	}

@Override
public int findCountInGroup(List<Integer> ids, Date startTime, Date endTime) {

	try {
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		CardRecordMapper cardMapper = sqlSession.getMapper(CardRecordMapper.class);
//		HashMap<String, Object> date=new HashMap<String, Object>();
//		date.put("id", id);
//		date.put("startTime", startTime);
//		date.put("endTime", endTime);
		Map<String, Object> paramMap=new HashMap<String, Object>();
		paramMap.put("sellerIds", ids);
		if (ValidateUtils.isValidatedDate(startTime,endTime)) {
			paramMap.put("startTime", startTime);
			paramMap.put("endTime", endTime);	
		}
		//统一修改mybatis
		int count=cardMapper.findCountInGroup(paramMap);
		sqlSession.commit();
		sqlSession.close();
		return count;
	} catch (Exception e) {
		e.printStackTrace();
	}
return 0;
}


}

