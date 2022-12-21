package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.User;
import com.project.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepo;
	
	@Override
	public User addUser(User user) {
		return userRepo.save(user);
	}
	
	@Override
	public User checkuserlogin(String username, String password) {
		return userRepo.checkuserlogin(username, password);
	}
}
