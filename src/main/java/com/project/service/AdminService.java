package com.project.service;

import com.project.model.Admin;

public interface AdminService {
	public Admin checkadminlogin(String username, String password);
	public Admin getAdminById(String username);
}
