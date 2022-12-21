package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.model.Screen;

@Repository
public interface ScreenRepository extends JpaRepository<Screen, String>{
	
	@Query("select s from Screen s where admin_username=?1")
	public List<Screen> getScreenDetails(String admin_username);
}
