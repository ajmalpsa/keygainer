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
@Table(name = "Comments")
public class CommentTable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int commentID;
	private String commentDetail;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date commentDateTime;
	private int contentID;
	@ManyToOne
	@JoinColumn(name = "userID")
	private UserTable user;
	
	
	public UserTable getUser() {
		return user;
	}
	public void setUser(UserTable user) {
		this.user = user;
	}
	public int getCommentID() {
		return commentID;
	}
	public void setCommentID(int commentID) {
		this.commentID = commentID;
	}
	public String getCommentDetail() {
		return commentDetail;
	}
	public void setCommentDetail(String commentDetail) {
		this.commentDetail = commentDetail;
	}
	public Date getCommentDateTime() {
		return commentDateTime;
	}
	public void setCommentDateTime(Date commentDateTime) {
		this.commentDateTime = commentDateTime;
	}
	public int getContentID() {
		return contentID;
	}
	public void setContentID(int contentID) {
		this.contentID = contentID;
	}
	
}
