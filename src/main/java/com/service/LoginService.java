package com.service;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LoginDAO;
import com.entity.UserEntity;

@Service
public class LoginService {
	
	@Autowired
	LoginDAO loginDAO;
	
	@Transactional
	public boolean doAuthenticate(UserEntity user) {
		//System.out.println("Service   = "+user);
		UserEntity userFromDB = loginDAO.getUserByUsername(user.getUserName());
		//System.out.println(userFromDB);
		if(userFromDB.getPassword().equals(user.getPassword())) {
			return true;
		}
		return false;
	}
	
	public UserEntity getTheUser(String username) {
		return loginDAO.getUserByUsername(username);
	}
	
	public UserEntity updateTheUser(UserEntity user) {
		System.out.println("Service before   = "+user);
		UserEntity userFromDB = loginDAO.getUserByUsername(user.getUserName());
		
		if(user.getPassword()!="") {
			userFromDB.setPassword(user.getPassword());
		}
		if(user.getName()!="") {
			userFromDB.setName(user.getName());
		}
		if(user.getContact()!=null) {
			userFromDB.setContact(user.getContact());
		}
		
		System.out.println("Service after   = "+userFromDB);
		loginDAO.update(userFromDB);
		
		return user;
	}
	
	public void saveTheUser(UserEntity user) {
		
		loginDAO.save(user);
	}
	

}
