package com.keygainer.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.keygainer.dao.UserDao;
import com.keygainer.table.UserTable;


@Service("UserServices")
public class UserServices {
	@Autowired
	 UserDao dao;
	
	@Transactional
	public List<UserTable> loginSelect(String mail, String password) {
		List<UserTable> list = dao.LogSelect(mail, password);
		return list;
	}
	
	@Transactional
	public Long countMailService(String mail) {
		Long count = dao.countMail(mail);
		return count;
	}
	
	@Transactional
	public UserTable saveUser(UserTable table) {
		dao.saveUser(table);
		return table;
	}
	
	@Transactional
	public List<UserTable> selectAllUser(){
		List<UserTable> list = dao.allUsers();
		return list;
	}
	
	@Transactional
	public void apprUser(String id) {
		dao.aprUser(id);
	}
	@Transactional
	public UserTable userById(int id) {
		return dao.userById(id);
	}
	@Transactional
	public void blockUser(int id) {
		dao.blockUser(id);
	}
	
}
