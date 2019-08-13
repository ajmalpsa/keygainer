package com.keygainer.table;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicUpdate;

@Entity
@Table(name = "Feedback")
@DynamicUpdate
public class FeedbackTable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int FeedbackID;
	
	@ManyToOne
	@JoinColumn(name = "about")
	private UserTable aboutUser;
	@ManyToOne
	@JoinColumn(name = "fromid")
	private UserTable fromUser;
	private String message;
	private String subject;
	private int readstatus;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date feedbackDateTime;
	
	
	public Date getFeedbackDateTime() {
		return feedbackDateTime;
	}
	public void setFeedbackDateTime(Date feedbackDateTime) {
		this.feedbackDateTime = feedbackDateTime;
	}
	public int getReadstatus() {
		return readstatus;
	}
	public void setReadstatus(int readstatus) {
		this.readstatus = readstatus;
	}
	public UserTable getAboutUser() {
		return aboutUser;
	}
	public void setAboutUser(UserTable aboutUser) {
		this.aboutUser = aboutUser;
	}
	public UserTable getFromUser() {
		return fromUser;
	}
	public void setFromUser(UserTable fromUser) {
		this.fromUser = fromUser;
	}
	public int getRead() {
		return readstatus;
	}
	public void setRead(int readstatus) {
		this.readstatus = readstatus;
	}
	public int getFeedbackID() {
		return FeedbackID;
	}
	public void setFeedbackID(int feedbackID) {
		FeedbackID = feedbackID;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
}
