package com.project.service;

import java.util.List;

import com.project.model.Screen;

public interface ScreenService {
	
	public Screen addScreen(Screen screen);
	
	public List<Screen> getScreenDetails(String admin_username);
	
	public Screen screenById(String screen_id);
}
