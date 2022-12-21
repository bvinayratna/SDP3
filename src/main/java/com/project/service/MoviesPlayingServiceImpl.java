package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.MoviesPlayingInT;
import com.project.repository.MoviesPlayingRepository;

@Service
public class MoviesPlayingServiceImpl implements MoviesPlayingService{
	
	@Autowired
	MoviesPlayingRepository moviesplayingRepo;
	
	@Override
	public MoviesPlayingInT addMovie(MoviesPlayingInT m) {
		// TODO Auto-generated method stub
		return moviesplayingRepo.save(m);
	}

	@Override
	public List<MoviesPlayingInT> getMoviesPlayingById(String movie_name) {
		// TODO Auto-generated method stub
		return moviesplayingRepo.getMoviesPlayingById(movie_name);
	}

}
