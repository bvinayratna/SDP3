package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Admin;
import com.project.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminRepository adminRepo;
	
	@Override
	public Admin checkadminlogin(String username, String password) {
		
		return adminRepo.checkadminlogin(username, password);
	}
	
	@Override
	public Admin getAdminById(String username) {
		return adminRepo.getById(username);
	}

}
