package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity(name = "user")
public class User {
	
	@Id
	@Column(nullable = false, unique = true, length=50)
	private String username;
	
	@Column(nullable = false, length=50)
	private String name;
	
	@Column(nullable = false, unique = true, length=200)
	private String emailid;
	
	@Column(nullable = false, unique = true, length=10)
	private String contactno;
	
	@Column(nullable = false, length=75)
	
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "enduser [username=" + username + ", name=" + name + ", emailid=" + emailid + ", contactno=" + contactno
				+ ", password=" + password + "]";
	}
	
	
	
}
