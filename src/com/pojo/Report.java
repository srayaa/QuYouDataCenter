package com.pojo;

import java.util.Date;

public class Report {
    private int reportId;
    private String name;
	private String phoneNumber;
	private String weChat;
	private int gameId;
	private String address;
	private int questionType;
	private String questionDesc;
	private Date saveTime;
	
	public Report(){
	}
	

	
	


	public Report( String name, String phoneNumber, String weChat, int gameId, String address,
			int questionType, String questionDesc, Date saveTime) {
		super();
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.weChat = weChat;
		this.gameId = gameId;
		this.address = address;
		this.questionType = questionType;
		this.questionDesc = questionDesc;
		this.saveTime = saveTime;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getReportId() {
		return reportId;
	}

	public void setReportId(int reportId) {
		this.reportId = reportId;
	}

	
	public String getPhoneNumber() {
		return phoneNumber;
	}






	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}






	public String getWeChat() {
		return weChat;
	}






	public void setWeChat(String weChat) {
		this.weChat = weChat;
	}






	public int getGameId() {
		return gameId;
	}
	public void setGameId(int gameId) {
		this.gameId = gameId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getQuestionType() {
		return questionType;
	}
	public void setQuestionType(int questionType) {
		this.questionType = questionType;
	}
	public String getQuestionDesc() {
		return questionDesc;
	}
	public void setQuestionDesc(String questionDesc) {
		this.questionDesc = questionDesc;
	}

	public Date getSaveTime() {
		return saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}
	
}
