package com.keygainer.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.keygainer.dao.SubjectsDao;
import com.keygainer.table.SubjectsTable;

@Service("SubjectsService")
public class SubjectsServices {
	@Autowired
	SubjectsDao dao;
	
	@Transactional
	public void addSubject(SubjectsTable table) {
		dao.addSubject(table);
	}
	@Transactional
	public List<SubjectsTable> selectSubjects(){
		return dao.selecSubjects();
	}
	@Transactional
	public void updateSubject(SubjectsTable table) {
		dao.updateSubject(table);
	}
	

}
