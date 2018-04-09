package com.example.demo.controller;



import java.security.Principal;

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
//import org.springframework.security.core.context.SecurityContextHolder;
import com.example.demo.model.Event;
import com.example.demo.model.User;
import com.example.demo.services.EventService;
import com.example.demo.services.UserService;


@Controller
public class EventController {

	@Autowired
private EventService eventService;
private UserService userService;	
	

	@RequestMapping("/event")
public String Welcome(HttpServletRequest request)
{request.setAttribute("mode","MODE_HOME");
	return "homepage";
}
	
	@RequestMapping("/events456")
	public String Welcome1(HttpServletRequest request)
	{request.setAttribute("mode","MODE_HOME");
		return "trainer";
	}
		
	
	@RequestMapping(method = RequestMethod.POST,value="/eventregister")
	public String registeration(HttpServletRequest request)
	{
request.setAttribute("mode","EVENT_REGISTER");
	return "homepage";
	}	
	

	
	@PostMapping("/save-event")
	public String registerUser(@ModelAttribute Event event,BindingResult bindingResult,HttpServletRequest request) {
		
	//	Authentication auth
		// org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      //String name = auth.getName();
	      //get logged in username
	 //     System.out.println("USERRRRRRRr"+name);
		
		eventService.saveMyEvent(event);
	request.setAttribute("mode", "EVENT_REGISTER");
	
	//Principal principal=request.getUserPrincipal() ;
//	String name=null;
//	String name =principal.getName();
//	System.out.println("#######################"+principal.getName());
		return "homepage";
		
	}	
//	@GetMapping("/show-users")
//	public String showAllUser(HttpServletRequest request) {
//	request.setAttribute("users",userService.showAllUsers());
//		request.setAttribute("mode","ALL_USERS");
//		return "homepage";
//	}
//
//	@RequestMapping("/delete-user")
//	public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
//		userService.deleteMyuser(id);
//		request.setAttribute("users",userService.showAllUsers());
//		request.setAttribute("mode","ALL_USERS");
//		return "homepage";
//	}
//
//	@RequestMapping("/edit-user")
//	public String editUser(@RequestParam int id,HttpServletRequest request)  {
//		request.setAttribute("user",userService.editUser(id));
//		request.setAttribute("mode","MODE_UPDATE");
//		return "homepage3";
//	}
//		
		
//		public String showAllEvents(HttpServletRequest request) {
//		request.setAttribute("events",eventService.showAllEvents());
//			request.setAttribute("mode","ALL_USERS");
//			return "homepage";
//		}
//	
@RequestMapping("/show-events")
	public String showAllEvents(HttpServletRequest request) {
		request.setAttribute("events",eventService.showAllEvents());
		request.setAttribute("mode","ALL_EVENTS");
		return "homepage2";
	}

@RequestMapping("/show-events1234")
public String showAllEvents1234(HttpServletRequest request) {
	request.setAttribute("events",eventService.showAllEvents());
	request.setAttribute("mode","ALL_EVENTS");
	return "user2";
}
@RequestMapping("/delete-events")
public String deleteMyevent(@RequestParam int eventid,HttpServletRequest request ) {
	eventService.deleteMyevent(eventid);
	request.setAttribute("events",eventService.showAllEvents());
	request.setAttribute("mode","ALL_EVENTS");
	return "homepage2";
}

	
	}


