package com.keygainer.table;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Rating")
public class RatingTable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int RatingID;
	private int UserID;
	private int contentID;
	private int rating;
	private int count;
	public int getRatingID() {
		return RatingID;
	}
	public void setRatingID(int ratingID) {
		RatingID = ratingID;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public int getContentID() {
		return contentID;
	}
	public void setContentID(int contentID) {
		this.contentID = contentID;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}