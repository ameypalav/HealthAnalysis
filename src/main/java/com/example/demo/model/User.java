package com.example.demo.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	//@OneToMany(cascade = CascadeType.ALL)
	@Column(name="id")
	private int id;

	private String username;
	private String firstname;
	private String lastname;
	private int age;
	private String password;
	private String email;
	private String role;
	
private int coin;
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", age=" + age + ", password=" + password + ", email=" + email + ", role=" + role + "]";
	}

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	
//	public String toString() {
//		return "User [username=" + username + ", firstname=" + firstname + ", lastname=" + lastname + ", age=" + age
//				+ ", password=" + password + ", email=" + email + ", id=" + id + "]";
//	}
	
	public User(String username, String firstname, String lastname, int age, String password, String email,String role,int coin) {
		super();
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.password = password;
		this.email = email;
		this.role=role;
		this.coin=coin;
	}
	
	public int getId() {
		return id;
	}
	public int getCoin() {
		return coin;
	}

	public void setCoins(int coin) {
		this.coin = coin;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
}
