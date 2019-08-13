package com.keygainer.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.keygainer.dao.PasswordResetDao;
import com.keygainer.table.PasswordTokenTable;

@Service("PasswordTokenServices")
public class PasswordTokenService {
	
	@Autowired
	PasswordResetDao dao;
	
	@Transactional
	public void saveToken(PasswordTokenTable table,String  mail) {
		dao.saveToken(table,mail);
	}
	@Transactional
	public List<PasswordTokenTable> getToken(String token){
		return dao.getToken(token);
	}
	@Transactional
	public void resetPassword(int userid, String pass) {
		dao.resetPassword(userid,pass);
	}
	
}
