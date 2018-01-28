package com.pojo;

import java.util.Date;

public class MainProxy extends Person{

	
	Date cardLTime;
	String address;
	String contactName;
	String contactPhone;
	String emergencyContact;
	String emergencyPhone;
	
	public MainProxy() {
		super();
	}
	public MainProxy(String username, String address, String contactName, String contactPhone,
			String emergencyContact,String emergencyPhone,Date createTime) {
		super();
		this.username = username;
		this.address = address;
		this.contactName = contactName;
		this.contactPhone = contactPhone;
		this.emergencyContact = emergencyContact;
		this.emergencyPhone = emergencyPhone;
		this.createTime=createTime;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactPhone() {
		return contactPhone;
	}
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	public String getEmergencyContact() {
		return emergencyContact;
	}
	public void setEmergencyContact(String emergencyContact) {
		this.emergencyContact = emergencyContact;
	}
	public String getEmergencyPhone() {
		return emergencyPhone;
	}
	public void setEmergencyPhone(String emergencyPhone) {
		this.emergencyPhone = emergencyPhone;
	}
	
	
}
