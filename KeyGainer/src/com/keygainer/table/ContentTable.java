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

@Entity
@Table(name = "Contents")
public class ContentTable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ContentID;
	private String VideoURL;
	private String title;
	private String ctext;
	@Temporal(TemporalType.TIMESTAMP)
	private Date uploadtime;
	
	
	@ManyToOne
	@JoinColumn(name = "SubjectID")
	private SubjectsTable subject;
	
	@ManyToOne
	@JoinColumn(name="UploaderID")
	private UserTable user;
	
	
	
	public Date getUploadtime() {
		return uploadtime;
	}
	public void setUploadtime(Date uploadtime) {
		this.uploadtime = uploadtime;
	}
	public UserTable getUser() {
		return user;
	}
	public void setUser(UserTable user) {
		this.user = user;
	}
	public SubjectsTable getSubject() {
		return subject;
	}
	public void setSubject(SubjectsTable subject) {
		this.subject = subject;
	}
	public int getContentID() {
		return ContentID;
	}
	public void setContentID(int contentID) {
		ContentID = contentID;
	}
	public String getVideoURL() {
		return VideoURL;
	}
	public void setVideoURL(String videoURL) {
		VideoURL = videoURL;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCtext() {
		return ctext;
	}
	public void setCtext(String ctext) {
		this.ctext = ctext;
	}
}
