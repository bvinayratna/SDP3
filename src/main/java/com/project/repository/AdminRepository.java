package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String> {
	
	@Query("Select a from Admin a where username=?1 and password=?2")
	public Admin checkadminlogin(String username, String password);
}
