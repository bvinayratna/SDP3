package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.model.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, String> {
	
	@Query("select m from Movie m")
	public List<Movie> get_InTheatre_movies();

}
