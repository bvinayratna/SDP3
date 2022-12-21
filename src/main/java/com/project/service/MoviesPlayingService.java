package com.project.service;

import java.util.List;

import com.project.model.MoviesPlayingInT;

public interface MoviesPlayingService {
	public MoviesPlayingInT addMovie(MoviesPlayingInT m);
	
	public List<MoviesPlayingInT> getMoviesPlayingById(String movie_name);
}
