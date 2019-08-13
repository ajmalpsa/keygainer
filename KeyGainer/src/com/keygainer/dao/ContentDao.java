package com.keygainer.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.keygainer.table.CommentTable;
import com.keygainer.table.ContentTable;
import com.keygainer.table.FeedbackTable;
import com.keygainer.table.RatingTable;
import com.keygainer.table.ReplyTable;
import com.keygainer.table.SubjectsTable;
import com.keygainer.table.UserTable;

@Repository
public class ContentDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public void Addcontent(ContentTable table,int sid,int uid) {
		Session session = sessionFactory.getCurrentSession();
		table.setSubject(session.load(SubjectsTable.class,sid));
		table.setUser(session.load(UserTable.class, uid));
		session.save(table);
	}

	public Object getContentById(int id){
		Session session = sessionFactory.getCurrentSession();
		Object o = session.get(ContentTable.class, id);
		return o;
	}
	
	public List<RatingTable> getRating(int cid,int uid) {
		Session session = sessionFactory.getCurrentSession();
		String query = "from RatingTable where ContentID ="+cid+" and UserID="+uid;
		List<RatingTable> list = session.createQuery(query).list();
		return list;
	}
	public void addRating(RatingTable table) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(table);
	}
	public int getContentRating(int cid) {
		Session session = sessionFactory.getCurrentSession();
		String sqlquery = "select avg(rating) from RatingTable where ContentID ="+cid;
		Query query =  session.createQuery(sqlquery);
		if(query.uniqueResult()==null) {
			return 0;

		}
		else {
		double rating =(double) query.uniqueResult();
		int ratings = (int) rating;
		return ratings;
		}
		
		
		
	}
	public void addComment(CommentTable table , int userid) {
		Session session = sessionFactory.getCurrentSession();
		table.setUser(session.load(UserTable.class, userid));
		session.save(table);
	}
	public List<CommentTable> getComments(int cid){
		Session session = sessionFactory.getCurrentSession();
		String query = "from CommentTable where contentID ="+cid;
		List<CommentTable> list = session.createQuery(query).list();
		return list;
	}
	public void addReply(ReplyTable table,int uid) {
		Session session = sessionFactory.getCurrentSession();
		table.setUser(session.load(UserTable.class, uid));
		session.save(table);
	}
	public List<ReplyTable> getReply(int cid) {
		Session session = sessionFactory.getCurrentSession();
		String query = "select * from Replies where CommentID in(select CommentID from Comments  where contentID ="+cid+")";
		SQLQuery q = session.createSQLQuery(query);
		q.addEntity(ReplyTable.class);
		List<ReplyTable> list = q.list();
		return list;
	}
	public void deleteReply(int id) {
		Session session = sessionFactory.getCurrentSession();
		ReplyTable table = session.load(ReplyTable.class, id);
		session.delete(table);
	}
	public void deleteComment(int cid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from ReplyTable where CommentID=:commentid");
		query.setParameter("commentid", cid);
		query.executeUpdate();
		CommentTable table = session.load(CommentTable.class, cid);
		session.delete(table);
	}
	public List<ContentTable> getAllContent(){
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(ContentTable.class).setMaxResults(3).list();
	}
	public List<ContentTable> getLimitContent(int pageid, int limit){
		Session session = sessionFactory.getCurrentSession();
		String querys = "from ContentTable";
		Query query = session.createQuery(querys);
		query.setFirstResult(pageid);
		query.setMaxResults(limit);
		return query.list();
		
	}
	public void addFeedback(FeedbackTable table, int about, int from) {
		Session session = sessionFactory.getCurrentSession();
		table.setAboutUser(session.load(UserTable.class,about));
		table.setFromUser(session.load(UserTable.class, from));
		session.save(table);
		
	}
	public List<FeedbackTable> getFeedbacks(){
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(FeedbackTable.class).list();
	}
	public FeedbackTable changeReadFeedback(int id) {
		Session session = sessionFactory.getCurrentSession();
		FeedbackTable table = session.load(FeedbackTable.class, id);
		table.setRead(1);
		session.update(table);
		return table;
	}
	public int countContent() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select count(*) from ContentTable");
		Long count =(Long) query.uniqueResult();
		System.out.println("count is"+count);
		return (int) Math.ceil(count/4);
	}
	public int countUserContent(int uid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select count(*) from ContentTable where UploaderID = "+uid);
		Long count =(Long) query.uniqueResult();
		return count.intValue();
	}
	
}
