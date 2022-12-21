package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Screen;
import com.project.repository.ScreenRepository;

@Service
public class ScreenServiceImpl implements ScreenService{
	
	@Autowired
	ScreenRepository screenRepo;

	@Override
	public Screen addScreen(Screen screen) {
		return screenRepo.save(screen);
	}

	@Override
	public List<Screen> getScreenDetails(String admin_username) {
		return screenRepo.getScreenDetails(admin_username);
	}

	@Override
	public Screen screenById(String screen_id) {
		return screenRepo.getById(screen_id);
	}	
	
}
