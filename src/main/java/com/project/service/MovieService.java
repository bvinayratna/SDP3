package com.project.service;

import java.util.List;

import com.project.model.Movie;

public interface MovieService {
	public Movie addMovie(Movie movie);
	public List<Movie> get_InTheatre_movies();
	public Movie get_Movie_Details(String name);
	
	public void deleteAllIntheaters();

}
