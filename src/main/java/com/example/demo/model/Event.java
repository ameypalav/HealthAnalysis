


package com.example.demo.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="event")
public class Event {
	
	@Id
	private int eventid;
	private String eventname;
	private String eventdesc;


@OneToOne(optional=true,cascade = {CascadeType.ALL},orphanRemoval = true)
   @JoinColumn(name="id") 
    //@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private User user;
	
public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
public int geteventid() {
		return eventid;
	}
	public void seteventid(int eventid) {
		this.eventid = eventid;
	}
	
	
	
@Override
	public String toString() {
		return "Event [eventid=" + eventid + ", eventname=" + eventname + ", eventdesc=" + eventdesc + ", user=" + user
				+ "]";
	}
	//	@Override
//	public String toString() {
//		return "Event [eventid=" + eventid + ", eventname=" + eventname + ", eventdesc=" + eventdesc + "]";
//	}
	public String getEventname() {
		return eventname;
	}
	public void setEventname(String eventname) {
		this.eventname = eventname;
	}
	public String getEventdesc() {
		return eventdesc;
	}
	public void setEventdesc(String eventdesc) {
		this.eventdesc = eventdesc;
	}
	public Event(int eventid, String eventname, String eventdesc) {
		super();
		this.eventid = eventid;
		this.eventname = eventname;
		this.eventdesc = eventdesc;
	}
	

	public Event() {
		
	}
	
}
