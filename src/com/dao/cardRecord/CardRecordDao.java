package com.dao.cardRecord;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.pojo.CardRecord;

public interface CardRecordDao {
	//添加售卡记录
	public void addCardRecord(CardRecord Card);
	//查询售卡者的售卡记录
	public List<CardRecord> findCardBySellerIdandTime(int id,Date startTime,Date endTime,int startIndex,int length);
	//查询买卡者的买卡及记录
	public List<CardRecord> findCardByBuyerIdandTime(int id,Date startTime,Date endTime,int startIndex,int length);
	//管理员--------查找售卡记录，时间可选
	public List<CardRecord> getAllCardRecord(Date startTime,Date endTime,int startIndex,int length);
	//总代查找手下代理的售卡记录，时间可选(查询一组人的售卡记录)
	public List<CardRecord> findCardRecordsInGroup(List<Integer> id,Date startTime,Date endTime,int startIndex,int length);
	//总代查找手下代理的售卡记录，时间可选(查询一组人的售卡记录)
	public int findCountInGroup(List<Integer> id,Date startTime,Date endTime);
	//代理---------查找售卡记录条数，时间可选
	public int findCountByTimeAndId(int id,Date startTime, Date endTime);
	//管理员--------查找售卡记录条数，时间可选
	public int getCountByTime(Date startTime, Date endTime);
}
