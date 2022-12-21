package com.project.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, String> {
	
	@Query("Select u from user u where username=?1 and password=?2")
	public User checkuserlogin(String username, String password);
	
}
