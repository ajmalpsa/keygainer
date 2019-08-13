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
@Entity
@Table(name = "Replies")
public class ReplyTable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ReplyID;
	private int CommentID;
	private String Body;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date ReplyTime;
	@ManyToOne
	@JoinColumn(name = "UserID")
	private UserTable user;
	
	public UserTable getUser() {
		return user;
	}
	public void setUser(UserTable user) {
		this.user = user;
	}
	public int getReplyID() {
		return ReplyID;
	}
	public void setReplyID(int replyID) {
		ReplyID = replyID;
	}
	public int getCommentID() {
		return CommentID;
	}
	public void setCommentID(int commentID) {
		CommentID = commentID;
	}
	public String getBody() {
		return Body;
	}
	public void setBody(String body) {
		Body = body;
	}
	public Date getReplyTime() {
		return ReplyTime;
	}
	public void setReplyTime(Date replyTime) {
		ReplyTime = replyTime;
	}
}
