package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

@Service
@Transactional
public class UserService  {
	
	@Autowired
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}

	public void saveMyUser(User user)
	{
		userRepository.save(user);
	}
	
	public List<User> showAllUsers(){
		List<User> users = new ArrayList<User>();
	for(User user :userRepository.findAll()) {
		users.add(user);
	}
		
		return users;
	}
	
	public void deleteMyuser(int id) {
		
		userRepository.delete(id);
	}
	
public User editUser(int id) {
	return userRepository.findOne(id);
}

//public User editUser(String username) {
//	
//	return userRepository.findOne(id)
//}
//	
public User findByusername(String username) {
	return userRepository.findByUsername(username);
}
public User findByUsernameAndPassword(String username,String password)
{
	return userRepository.findByUsernameAndPassword(username, password);
}

public User findrole(int id)
{
	return userRepository.findOne(id);
}

//public User findbyusername(String username)
//{
//	return userRepository.findbyusername(username);
//}

}
