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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

//import com.example.demo.Calories;
//import org.springframework.security.core.context.SecurityContextHolder;
import com.example.demo.model.Event;
import com.example.demo.model.User;
import com.example.demo.services.EventService;
import com.example.demo.services.UserService;


@Controller
public class TrainerController {
	@Autowired
	private EventService eventService;
	@Autowired
	private UserService userService;	
		

		@RequestMapping("/events")
	public String Welcome1(HttpServletRequest request)
	{request.setAttribute("mode","MODE_HOME");
		return "trainer";
	}
		
		
		@RequestMapping(method = RequestMethod.POST,value="/eventregister1")
		public String register(HttpServletRequest request)
		{
	request.setAttribute("mode","TRAIN_REGISTER");
		return "trainer";
		}	
		
		@PostMapping("/save-events")
		public String regUser(@ModelAttribute Event event,BindingResult bindingResult,HttpServletRequest request) {
			
		//	Authentication auth
			// org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		      //String name = auth.getName();
		      //get logged in username
		 //     System.out.println("USERRRRRRRr"+name);
			
			eventService.saveMyEvent(event);
		request.setAttribute("mode", "TRAIN_REGISTER");
		
		//Principal principal=request.getUserPrincipal() ;
//		String name=null;
//		String name =principal.getName();
//		System.out.println("#######################"+principal.getName());
			return "trainer";
			
		}	
//		@GetMapping("/show-user123")
//		public String showAllUser(HttpServletRequest request) {
//		request.setAttribute("users",userService.showAllUsers());
//		request.setAttribute("mode","ALL_USERS");
//			return "homepage3";
//		}
	//
//		@RequestMapping("/delete-user")
//		public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
//			userService.deleteMyuser(id);
//			request.setAttribute("users",userService.showAllUsers());
//			request.setAttribute("mode","ALL_USERS");
//			return "homepage";
//		}
	//
//		@RequestMapping("/edit-user")
//		public String editUser(@RequestParam int id,HttpServletRequest request)  {
//			request.setAttribute("user",userService.editUser(id));
//			request.setAttribute("mode","MODE_UPDATE");
//			return "homepage3";
//		}
//			
			
//			public String showAllEvents(HttpServletRequest request) {
//			request.setAttribute("events",eventService.showAllEvents());
//				request.setAttribute("mode","ALL_USERS");
//				return "homepage";
//			}
	//	
		@RequestMapping("/delete-user1")
		public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
			userService.deleteMyuser(id);
			request.setAttribute("users",userService.showAllUsers());
			request.setAttribute("mode","ALL_USERS");
			return "homepage3";
		}
		
		
		
	@RequestMapping("/show-event")
		public String showAllEve(HttpServletRequest request) {
			request.setAttribute("events",eventService.showAllEvents());
			request.setAttribute("mode","ALL_EVENTS");
			return "trainer2";
		}
	
	@RequestMapping("/coins")
	public String showAll(HttpServletRequest request) {
		request.setAttribute("events",eventService.showAllEvents());
		request.setAttribute("mode","ALL_USERS2");
		return "trainer4";
	}
	
	@RequestMapping("/delete-event")
	public String deleteevent(@RequestParam int eventid,HttpServletRequest request ) {
		eventService.deleteMyevent(eventid);
		request.setAttribute("events",eventService.showAllEvents());
		request.setAttribute("mode","ALL_EVENTS");
		return "trainer2";
	}
	
	@PostMapping("/Calories")
	public String registerUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request,@RequestParam Integer wl,
			@RequestParam Integer yoga,
			@RequestParam Integer ell,
			@RequestParam Integer cyc,
			@RequestParam Integer wal,
			@RequestParam Integer jog,
			@RequestParam Integer run,
			@RequestParam Integer swim,
			@RequestParam String username
			) {
		User user2 = new User(); 
		user2=userService.findByusername(user.getUsername());
	    System.out.print("##########3asdasdasdasdsad33"+user.getUsername());	
		 if(userService.findByusername(user.getUsername())!=null) {
		    System.out.print("##########ameyyyyyyy3"+user.getUsername()); }
//		String PAssword=user.getPassword();
//		String usernamee=user.getUsername();
//		11111111111
	//	User user3=userService.findByUsernameAndPassword(usernamee, PAssword);
		    System.out.print("##########3asdasdasdasdsad33"+username); 
		    int r=user2.getId();
		    user.setEmail(user2.getEmail());
		    user.setFirstname(user2.getFirstname());
		    user.setLastname(user2.getLastname());
		    user.setPassword(user2.getUsername());
		    user.setRole(user2.getRole());
		    
	//userSe1rvice.saveMyUser(user);
		int Coin;
		int Total_cal_burn;
		Total_cal_burn=(wl+yoga+ell+cyc+wal+jog+run+swim);
	    Coin = (Total_cal_burn)/100;
	    System.out.println("Coinsss"+Coin);
	   user.setCoins(Coin);
	    
	   System.out.print("#########iddddddd"+user2.getId());
	   
  userService.deleteMyuser(r);
  userService.saveMyUser(user);
//	    
	request.setAttribute("mode", "MODE_HOME");
		return "trainer4";
		
	}
	
	
		
}
