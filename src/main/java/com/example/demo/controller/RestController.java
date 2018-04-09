package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.User;
import com.example.demo.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
private UserService userService;	
	

	@GetMapping("/saveuser")
public String saveUser(@RequestParam String username,@RequestParam String firstname,@RequestParam String lastname,@RequestParam int age,@RequestParam String password,@RequestParam String email,@RequestParam String role) {
User user=new User(username, firstname, lastname, age, password, email,role, age);	
		userService.saveMyUser(user);
return 	"User is saved";
}
}
	

