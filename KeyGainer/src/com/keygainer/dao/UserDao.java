package com.keygainer.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.keygainer.table.UserTable;

@Repository
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<UserTable> LogSelect(String mail, String password) {
		Session session = sessionFactory.getCurrentSession();
		String qu = "from UserTable where emailid='" + mail + "'  and password='" + password + "'";
		List<UserTable> list = session.createQuery(qu).list();
		return list;
	}

	public Long countMail(String mail) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select count(*) from UserTable where emailid=:mailid";
		Query query = session.createQuery(sql);
		query.setString("mailid", mail);
		Long count = (Long) query.uniqueResult();
		return count;
	}

	public UserTable saveUser(UserTable table) {
		Session session = sessionFactory.getCurrentSession();
		table.setBlocked("0");
		session.save(table);
		return table;
	}

	public List<UserTable> allUsers() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from UserTable";
		List<UserTable> list = session.createQuery(sql).list();
		return list;
	}

	public void aprUser(String id) {
//		String sql = "update UserTable set approved = '1' WHERE userID = '" + id + "'";
//		Session session = sessionFactory.getCurrentSession();
//		Query query = session.createQuery(sql);
//		query.executeUpdate();
		Session session = sessionFactory.getCurrentSession();
		int newId = Integer.parseInt(id);
		UserTable table = session.get(UserTable.class, newId);
		table.setApproved("1");
		session.update(table);
		

	}
	public UserTable userById(int id) {
		Session session = sessionFactory.getCurrentSession();
		UserTable table  = session.get(UserTable.class, id);
		return table;
	}
	public void blockUser(int id) {
		Session session = sessionFactory.getCurrentSession();
		UserTable table = session.load(UserTable.class, id);
		if(table.getBlocked().equals("0")) {
			System.out.println("blocked user");
			table.setBlocked("1");
			session.update(table);
		}
		else if(table.getBlocked().equals("1")) {
			System.out.println("unblocked user");
			table.setBlocked("0");
			session.update(table);
		}
	}

//	JdbcTemplate jdbcTemplate;
//	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
//		this.jdbcTemplate = jdbcTemplate;
//	}
//	
//	public int save(UserTable user){
//		try {
//		String sql = "insert into User(reg_date,password,name,dob,gender,emailid,phone,blocked,approved,role) values(curdate(),'"+user.getPassword()+"','"+user.getName()+"','"+user.getDob()+"','"+user.getGender()+"','"+user.getEmailid()+"','"+user.getPhone()+"',false,'"+user.getApproved()+"','"+user.getRole()+"');";
//		return jdbcTemplate.update(sql);
//		}
//		catch (Exception e) {
//			System.out.println(e);
//		}
//		return 0;
//		}
//	
//	public List<Integer> countMail(String mail){
//		
//		return jdbcTemplate.query("select count(*) from User where emailid='"+mail+"';",new RowMapper<Integer>(){
//
//			@Override
//			public Integer mapRow(ResultSet rs, int row) throws SQLException {
//				int count = rs.getInt(1);
//				return count;
//			}
//			
//		});
//		
//	}
//	
//	public List<UserTable> Login(String mail,String password){
//		return jdbcTemplate.query("select name,role,blocked from User where emailid='"+mail+"'  and password='"+password+"';", new RowMapper<UserTable>() {
//
//			@Override
//			public UserTable mapRow(ResultSet rs, int row) throws SQLException {
//				UserTable userTable = new UserTable();
//				userTable.setName(rs.getString("name"));
//				userTable.setRole(rs.getString("role"));
//				return userTable;
//			}
//			
//		});
//	}
//	

//	
//	public List<UserTable> aprUsers(){
//		return jdbcTemplate.query("select * from User where approved = '0';", new RowMapper<UserTable>() {
//
//			@Override
//			public UserTable mapRow(ResultSet rs, int row) throws SQLException {
//				UserTable user = new UserTable();
//				user.setUserID(rs.getInt("userID"));
//				user.setName(rs.getString("name"));
//				user.setEmailid(rs.getString("emailid"));
//				user.setRole(rs.getString("role"));
//				user.setPhone(rs.getString("phone"));
//				return user;
//			}
//			
//		});
//	}
//	

//	
//	

}
