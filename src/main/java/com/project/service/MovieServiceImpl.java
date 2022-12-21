package com.project.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Movie;
import com.project.repository.MovieRepository;

@Service
public class MovieServiceImpl implements MovieService{
	
	@Autowired
	MovieRepository movieRepo;
	
	@Override
	public Movie addMovie(Movie movie) {
		return movieRepo.save(movie);
	}

	@Override
	public List<Movie> get_InTheatre_movies() {
		List<Movie> movies = new ArrayList<>();
		
		movies = movieRepo.get_InTheatre_movies();
		
		return movies;
	}

	@Override
	public Movie get_Movie_Details(String name) {
		return movieRepo.getById(name);
	}

	@Override
	public void deleteAllIntheaters() {
		movieRepo.deleteAll();
		
	}

}
