package com.keygainer.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.keygainer.table.SubjectsTable;

@Repository
public class SubjectsDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addSubject(SubjectsTable table) {
		Session session = sessionFactory.getCurrentSession();
		session.save(table);
	}
	
	public List<SubjectsTable> selecSubjects(){
		
		Session session = sessionFactory.getCurrentSession();
		String sql = "from SubjectsTable";
		List<SubjectsTable> list = session.createQuery(sql).list();
		return list;
		
	}
	public void updateSubject(SubjectsTable table) {
		Session session = sessionFactory.getCurrentSession();
		SubjectsTable oldsub = session.load(SubjectsTable.class, table.getSubjectId());
		oldsub.setName(table.getName());
		oldsub.setDescription(table.getDescription());
		session.saveOrUpdate(oldsub);
	}

}
