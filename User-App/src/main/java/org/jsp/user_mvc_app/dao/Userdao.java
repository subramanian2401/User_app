package org.jsp.user_mvc_app.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import org.jsp.user_mvc_app.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Userdao {

	@Autowired
	private EntityManager manager;



	//Save User
	public User saveuser(User u) {
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		manager.persist(u);
		transaction.commit();
		return u;

	}

	public User updateuser(User u,int id) {
		User upuser=manager.find(User.class,id);
		if(upuser!=null) {
			EntityTransaction transaction=manager.getTransaction();
			upuser.setName(u.getName());
			upuser.setEmail(u.getEmail());
			upuser.setGender(u.getGender());
			upuser.setPhone(u.getPhone());
			transaction.begin();
			transaction.commit();
			return upuser;
		}else {
			return null;
		}
	}

	public User findbyid(int id) {
		return manager.find(User.class, id);
	}

	public User verifybyphone(long phone,String password) {
		try {
			Query q=manager.createQuery("select u from User u where u.phone=?1 and u.password=?2");
			q.setParameter(1, phone);
			q.setParameter(2, password);
			return (User) q.getSingleResult();
		}catch(NoResultException e) {
			System.err.println("Cannot Find User Phone");
			return null;
		}
	}

	public User verifybymail(String email,String password) {
		try {
			Query q=manager.createQuery("select u from User u where u.email=?1 and u.password=?2");
			q.setParameter(1, email);
			q.setParameter(2, password);
			return (User) q.getSingleResult();
		}catch(NoResultException e) {
			System.err.println("Invalid User Credintials");
			return null;
		}
	}



	public boolean delete(int id) {
		User u=manager.find(User.class, id);
		if(u!=null) {
			EntityTransaction transaction=manager.getTransaction();
			manager.remove(u);
			transaction.begin();
			transaction.commit();
			return true;
		}
		else {
			return false;
		}

	}





}
