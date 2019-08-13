package com.keygainer.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.keygainer.table.PasswordTokenTable;
import com.keygainer.table.UserTable;

@Repository
public class PasswordResetDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveToken(PasswordTokenTable table,String mail) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select userID from UserTable where emailid='"+mail+"'");
		int userid = (int) query.uniqueResult();
		table.setUserid(userid);
		session.save(table);
	}
	public List<PasswordTokenTable> getToken(String token) {
		Session session = sessionFactory.getCurrentSession();
		String hqlquery = "from PasswordTokenTable where token='"+token+"'";
		List<PasswordTokenTable> list = session.createQuery(hqlquery).list();
		return list;
	}
	public void resetPassword(int userid, String pass) {
		Session session = sessionFactory.getCurrentSession();
		UserTable user = session.load(UserTable.class, userid);
		user.setPassword(pass);
		session.update(user);
		
	}
}
