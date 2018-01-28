package com.pojo;

import java.util.Date;

public class CardRecord implements Comparable<CardRecord>{

	public int  sellerId;
	public String sellerName;
	int sellToType;
	Date sellTime;
	long sellTimeInMb;
	int income;
	int sellType;
	int cardLCount;
	int cardFCount;
	int buyerId;
	String buyerName;
    String memo;


	public CardRecord(int sellerId, String sellerName, int sellToType, Date sellTime, int income, int sellType,
			int cardLCount, int cardFCount, int buyerId, String buyerName, String memo) {
		super();
		this.sellerId = sellerId;
		this.sellerName = sellerName;
		this.sellToType = sellToType;
		this.sellTime = sellTime;
		this.income = income;
		this.sellType = sellType;
		this.cardLCount = cardLCount;
		this.cardFCount = cardFCount;
		this.buyerId = buyerId;
		this.buyerName = buyerName;
		this.memo = memo;
	}



	public CardRecord() {
		super();
	}



	public int getSellerId() {
		return sellerId;
	}



	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}



	public String getSellerName() {
		return sellerName;
	}



	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}



	public int getSellToType() {
		return sellToType;
	}



	public void setSellToType(int sellToType) {
		this.sellToType = sellToType;
	}



	public Date getSellTime() {
		return sellTime;
	}



	public void setSellTime(Date sellTime) {
		this.sellTime = sellTime;
	}



	public int getIncome() {
		return income;
	}



	public void setIncome(int income) {
		this.income = income;
	}



	public int getSellType() {
		return sellType;
	}



	public void setSellType(int sellType) {
		this.sellType = sellType;
	}



	public int getCardLCount() {
		return cardLCount;
	}



	public void setCardLCount(int cardLCount) {
		this.cardLCount = cardLCount;
	}



	public int getCardFCount() {
		return cardFCount;
	}



	public void setCardFCount(int cardFCount) {
		this.cardFCount = cardFCount;
	}



	public int getBuyerId() {
		return buyerId;
	}



	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}



	public String getBuyerName() {
		return buyerName;
	}



	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}



	public String getMemo() {
		return memo;
	}



	public void setMemo(String memo) {
		this.memo = memo;
	}



	public long getSellTimeInMb() {
		return sellTimeInMb;
	}



	public void setSellTimeInMb(long sellTimeInMb) {
		this.sellTimeInMb = sellTimeInMb;
	}



	@Override
	public int compareTo(CardRecord o) {
		return sellTime.compareTo(o.getSellTime());
	}

	

	
}
