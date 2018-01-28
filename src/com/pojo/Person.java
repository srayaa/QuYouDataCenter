package com.pojo;

import java.util.Date;

public class Person {
	int userId;
	String username;
	String password;
    String initPassword;
	Date createTime;
	int cardLCount;
	int cardFCount;
	Date cardLTime;
	int income;
	int cardCount;
	
	public String getInitPassword() {
		return initPassword;
	}
	public void setInitPassword(String initPassword) {
		this.initPassword = initPassword;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public Date getCardLTime() {
		return cardLTime;
	}
	public void setCardLTime(Date cardLTime) {
		this.cardLTime = cardLTime;
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
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
}
