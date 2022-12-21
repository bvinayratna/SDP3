package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="theater_admins")
public class Admin {
	
	@Id
	@Column(nullable = false, length=100)
	private String username;
	
	@Column(nullable = false, length=150)
	private String theatre_name;
	
//	@Column(nullable = false, length=2)
//	private String total_screens;
	
//	@Column(nullable = false, length=70)
//	private String seats_in_screens;
	
	@Column(nullable = false, length=200)
	private String address;
	
	@Column(nullable = false, length=100)
	private String password;

	@Override
	public String toString() {
		return "Admin [username=" + username + ", theatre_name=" + theatre_name + ", address=" + address + ", password=" + password + "]";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTheatre_name() {
		return theatre_name;
	}

	public void setTheatre_name(String theatre_name) {
		this.theatre_name = theatre_name;
	}

//	public String getTotal_screens() {
//		return total_screens;
//	}
//
//	public void setTotal_screens(String total_screens) {
//		this.total_screens = total_screens;
//	}

//	public String getSeats_in_screens() {
//		return seats_in_screens;
//	}
//
//	public void setSeats_in_screens(String seats_in_screens) {
//		this.seats_in_screens = seats_in_screens;
//	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}
