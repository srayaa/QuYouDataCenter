package com.pojo;

import java.util.Date;

public class Proxy extends Person{
	
	
	String address;
	String contactName;
	String contactPhone;
	String emergencyContact;
	int recommendPerson;
	long createTimeInMb;
	
	public Proxy() {
		super();
	}
	public Proxy(String username,String address, String contactName, String contactPhone,
			 int recommendPerson,Date createTime) {
		super();
		this.username=username;
		this.address = address;
		this.contactName = contactName;
		this.contactPhone = contactPhone;
		this.recommendPerson = recommendPerson;
		this.createTime=createTime;
	}
	
	public Proxy(int userId,String username,String address, String contactName, String contactPhone) {
		super();
		this.userId=userId;
		this.username=username;
		this.address = address;
		this.contactName = contactName;
		this.contactPhone = contactPhone;
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
	public int getRecommendPerson() {
		return recommendPerson;
	}
	public void setRecommendPerson(int recommendPerson) {
		this.recommendPerson = recommendPerson;
	}
	public long getCreateTimeInMb() {
		return createTimeInMb;
	}
	public void setCreateTimeInMb(long createTimeInMb) {
		this.createTimeInMb = createTimeInMb;
	}

}
