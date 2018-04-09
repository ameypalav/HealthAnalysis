package com.example.demo.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.demo.model.User;
import com.example.demo.services.UserService;

//import io.undertow.servlet.spec.HttpServletResponseImpl;


@SessionAttributes("user")
@Controller
public class LoginController {

	@Autowired
private UserService userService;

	@RequestMapping("/welcome")
public String Welcome(HttpServletRequest request)
{request.setAttribute("mode","MODE_HOME");
	return "welcomepage2";
}

	@ModelAttribute("user")
	public User setUpUserForm() {
	   return new User();
	}
	
@RequestMapping("/register")
	public String registeration(HttpServletRequest request)
	{
request.setAttribute("mode","MODE_REGISTER");
	return "welcomepage";
	}

@RequestMapping("/user1")
public String user1(HttpServletRequest request)
{
request.setAttribute("mode","MODE_REGISTER");
return "user1";
}


@PostMapping("/save-user")
public String registerUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request) {
userService.saveMyUser(user);
request.setAttribute("mode", "MODE_HOME");
	return "welcomepage";
	
}

@GetMapping("/show-users")
public String showAllUser(HttpServletRequest request) {
request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS");
	return "homepage3";
}


@GetMapping("/show-user123")
public String showAllUser123(HttpServletRequest request) {
request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS");
	return "trainer3";
}

@GetMapping("/show-user1234")
public String showAllUser1234(HttpServletRequest request) {
request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS2");
	return "trainer4";
}


@RequestMapping("/delete-user")
public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
	userService.deleteMyuser(id);
	request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS");
	return "homepage3";
}

@RequestMapping("/edit-user")
public String editUser(@RequestParam int id,HttpServletRequest request)  {
	request.setAttribute("user",userService.editUser(id));
	request.setAttribute("mode","MODE_UPDATE");
	return "homepage3";
}

@RequestMapping("/login")
public String login(HttpServletRequest request) {
	request.setAttribute("mode","MODE_LOGIN");
	return "welcomepage";
}

@RequestMapping("/logout")
public String logout(HttpServletRequest request) throws ServletException
{ request.logout();
return "welcomepage2";

		}

@RequestMapping ("/login-user")
public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
	System.out.print("userrrrrrrrrrr"+user.getEmail());
	User user2=userService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
	//User user2=userService.findbyUsername(user.getUsername());
	System.out.println(user2.getRole());
	String temp=user2.getRole();
	
	user.setUsername(user2.getUsername());
	user.setCoins(user2.getCoin());
	user.setPassword(user2.getPassword());
	if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
		if(temp.equalsIgnoreCase("ADMIN"))
		{
			return "homepage";

		}
		else if (temp.equalsIgnoreCase("user"))
		{System.out.println("$$$$$$$$$$$$$$$$");
		System.out.print("########"+user.getUsername());
			return "user1";
		}
		else
		{
			return "trainer";
		}
	}
	else {
		request.setAttribute("error", "Invalid Username or Password");
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
		
	}
	
	
}}
