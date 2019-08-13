package com.keygainer.services;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.keygainer.dao.ContentDao;
import com.keygainer.table.CommentTable;
import com.keygainer.table.ContentTable;
import com.keygainer.table.FeedbackTable;
import com.keygainer.table.RatingTable;
import com.keygainer.table.ReplyTable;

@Service("content")
public class ContentService {
	@Autowired
	ContentDao dao;
	
	@Transactional
	public void addContent(ContentTable table,int sid, int uid) {
		dao.Addcontent(table,sid,uid);
	}
	
	@Transactional
	public Object getContentById(int id) {
		Object o =  dao.getContentById(id);
		return o;
	}
	@Transactional
	public List<ContentTable> getAllContent(){
		return dao.getAllContent();
	}
	
	
	@Transactional
	public List<RatingTable> getRating(int cid,int uid) {
		return dao.getRating(cid,uid);
	}
	
	@Transactional
	public void addRating(RatingTable table) {
		dao.addRating(table);
	}
	@Transactional
	public int getContentRating(int cid) {
		return dao.getContentRating(cid);
	}
	@Transactional
	public void addComment(CommentTable table, int userid) {
		dao.addComment(table, userid);
	}
	@Transactional
	public List<CommentTable> getComment(int cid) {
		return dao.getComments(cid);
	}
	@Transactional
	public void addReply(ReplyTable table,int uid) {
		dao.addReply(table,uid);
	}
	@Transactional
	public List<ReplyTable> getReply(int cid){
		return dao.getReply(cid);
	}
	@Transactional
	public void deleteReply(int id) {
		dao.deleteReply(id);
	}
	@Transactional
	public void deleteComment(int cid) {
		dao.deleteComment(cid);
	}
	@Transactional
	public List<ContentTable> getLimitContent(int pageid,int limit) {
		return dao.getLimitContent(pageid,limit);
		
	}
	@Transactional
	public void addFeedback(FeedbackTable table, int about, int from) {
		dao.addFeedback(table, about, from);
	}
	@Transactional
	public List<FeedbackTable> getFeedbacks(){
		return dao.getFeedbacks();
	}
	@Transactional
	public FeedbackTable changeRead(int id) {
		return dao.changeReadFeedback(id);
	}
	@Transactional
	public int countContent() {
		return dao.countContent();
	}
	@Transactional
	public int countUserContent(int uid) {
		return dao.countUserContent(uid);
	}
}
