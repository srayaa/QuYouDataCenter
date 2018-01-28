package com.service.record.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.cardRecord.CardRecordDao;
import com.pojo.CardRecord;
import com.service.proxy.ProxyService;
import com.service.record.CardRecordService;

@Service
public class CardRecordServiceImpl implements CardRecordService {

	@Autowired
	CardRecordDao cardRecordDao;

	@Autowired 
	ProxyService proxyService;
	/*@Override
	public List<CardRecord> findCardByID(int id) {
		return cardRecordDao.findCardByID(id);
	}*/

	/*@Override
	public List<CardRecord> getAllCardRecord(int startIndex,int endIndex) {
		// TODO Auto-generated method stub
		return cardRecordDao.getAllCardRecord(startIndex,endIndex);
	}

	@Override
	public List<CardRecord> getCardRecordByTime(Date crTime, Date enTime,int startIndex,int length) {
		return cardRecordDao.getCardRecordByTime(crTime, enTime,startIndex,length);
	}


	@Override
	public List<CardRecord> findCardBySellerIdandTime(int id, Date crTime, Date enTime) {
		return cardRecordDao.findCardBySellerIdandTime(id, crTime, enTime);
	}*/
	/*@Override
	public List<CardRecord> findCardBySellerIdandTime(int id, Date crTime, Date enTime,int startIndex,int length) {
		return cardRecordDao.findCardBySellerIdandTime(id, crTime, enTime,startIndex,endIndex);
	}*/

	/*@Override
	public List<CardRecord> findCardByBuyerIdandTime(int id, Date crTime, Date enTime,int startIndex,int endIndex) {
		return cardRecordDao.findCardByBuyerIdandTime(id, crTime, enTime);
	}

	@Override
	public List<CardRecord> findCardByID(int id,int startIndex,int endIndex) {
		// TODO Auto-generated method stu
		return null;
	}*/

	/*	@Override
	public List<CardRecord> findCardByIds(List<Integer> id,int startIndex,int endIndex) {
		return cardRecordDao.findCardByIds(id, startIndex, endIndex);
	}

	@Override
	public List<CardRecord> findCardByBuyerIdandTime(int id, Date crTime, Date enTime) {
		// TODO Auto-generated method stub
		return cardRecordDao.findCardByBuyerIdandTime(id, crTime, enTime);
	}*/

	@Override
	public void addCardRecord(CardRecord Card) {
		cardRecordDao.addCardRecord(Card);
	}

	@Override
	public List<CardRecord> findCardBySellerIdandTime(int id, Date startTime, Date endTime, int startIndex,
			int length) {
		return cardRecordDao.findCardBySellerIdandTime(id, startTime, endTime, startIndex, length);
	}

	@Override
	public List<CardRecord> findCardBySellerIdandTime(int id, int startIndex, int length) {
		return cardRecordDao.findCardBySellerIdandTime(id, null, null, startIndex, length);
	}

	@Override
	public List<CardRecord> findCardByBuyerIdandTime(int id, Date startTime, Date endTime, int startIndex, int length) {
		return cardRecordDao.findCardByBuyerIdandTime(id, startTime, endTime, startIndex, length);
	}

	@Override
	public List<CardRecord> findCardByBuyerIdandTime(int id, int startIndex, int length) {
		return cardRecordDao.findCardByBuyerIdandTime(id, null, null, startIndex, length);
	}

	@Override
	public List<CardRecord> getAllCardRecord(Date startTime, Date endTime, int startIndex, int length) {
		return cardRecordDao.getAllCardRecord(startTime, endTime, startIndex, length);
	}

	@Override
	public List<CardRecord> getAllCardRecord(int startIndex, int length) {
		return cardRecordDao.getAllCardRecord(null, null, startIndex, length);
	}

	@Override
	public List<CardRecord> findCardRecordsInGroup(List<Integer> id, Date startTime, Date endTime, int startIndex,
			int length) {
		return cardRecordDao.findCardRecordsInGroup(id, startTime, endTime, startIndex, length);
	}

	@Override
	public List<CardRecord> findCardRecordsInGroup(List<Integer> id, int startIndex, int length) {
		return cardRecordDao.findCardRecordsInGroup(id, null, null, startIndex, length);
	}

	@Override
	public int findCountByTimeAndId(int id, Date startTime, Date endTime) {
		return cardRecordDao.findCountByTimeAndId(id, startTime, endTime);
	}

	@Override
	public int findCountByTimeAndId(int id) {
		return cardRecordDao.findCountByTimeAndId(id, null, null);
	}

	@Override
	public int getCountByTime(Date startTime, Date endTime) {
		return cardRecordDao.getCountByTime(startTime, endTime);
	}

	@Override
	public int getCountByTime() {
		return cardRecordDao.getCountByTime(null, null);
	}

	@Override
	public List<CardRecord> findCardBySellerIdandTime(int id, Date startTime, Date endTime) {
		return cardRecordDao.findCardBySellerIdandTime(id, startTime, endTime, -1, -1);
	}

	@Override
	public List<CardRecord> findCardByBuyerIdandTime(int id, Date startTime, Date endTime) {
		return cardRecordDao.findCardBySellerIdandTime(id, startTime, endTime, -1, -1);
	}

	@Override
	public List<CardRecord> getAllCardRecord(Date startTime, Date endTime) {
		return cardRecordDao.getAllCardRecord(startTime, endTime, -1, -1);
	}

	@Override
	public List<CardRecord> findCardRecordsInGroup(List<Integer> id, Date startTime, Date endTime) {
		return cardRecordDao.findCardRecordsInGroup(id, startTime, endTime, -1, -1);
	}

	@Override
	public int findCountInGroup(List<Integer> id, Date startTime, Date endTime) {
		return cardRecordDao.findCountInGroup(id, startTime, endTime);
	}




}
