package com.example.demo.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.User;

@Repository



public interface UserRepository extends CrudRepository<User, Integer> {
 //User findbyusername(String username);
 //User findbyUser(String username);
	public User findByUsernameAndPassword(String username,String password);
	//public User findRole(String username);
	
	public User findByUsername(String username);
}
