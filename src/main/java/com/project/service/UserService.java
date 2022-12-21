package com.project.service;

import com.project.model.User;

public interface UserService {
	public User addUser(User user);
	public User checkuserlogin(String username, String password);
	
}
