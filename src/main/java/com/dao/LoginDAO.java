package com.dao;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.entity.UserEntity;

@Component  //This will declare the class as spring bean, no need to configure using xml
public class LoginDAO {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int save(UserEntity user) {
		Integer i =(Integer) hibernateTemplate.save(user);
		return i; //this is number of rows affected or added
	}
	
	public UserEntity getUserByUsername(String Username) {
		 List<UserEntity> user = (List<UserEntity>) hibernateTemplate.findByNamedParam("FROM UserEntity WHERE userName = :username","username",Username);		
		 //System.out.println("DAO   = "+user.get(0));
		return user.get(0);
	}
	
	@Transactional
	public void update(UserEntity user) {
		hibernateTemplate.update(user);
		//System.out.println("DAO    = "+user);
	}
	
	

}

