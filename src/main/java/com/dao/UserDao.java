package com.dao;

import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.*;

import com.entity.User;

public class UserDao {
	
	private SessionFactory factory;
	private Session session = null;
	private Transaction tx = null;
	
	
	
	public UserDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public boolean saveuser(User user) {
		boolean f=false;
		
		try {
			session = factory.openSession();
			tx=session.beginTransaction();
			
			session.save(user);
			tx.commit();
			f=true;
			
			
		}catch (Exception e) {
			if(tx!=null) {
				f=false;
				e.printStackTrace(); 
			}
		}
		return f;
	}
	
	public User login(String username, String password)
	{
		User u = null;
		session = factory.openSession();
		Query q = session.createQuery("from User where username=:us and password=:ps");
		q.setParameter("us", username);
		q.setParameter("ps", password);
		
		u=(User) q.uniqueResult();
		
		return u;
		
	}
	

}
