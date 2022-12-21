package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.model.MoviesPlayingInT;

@Repository
public interface MoviesPlayingRepository extends JpaRepository<MoviesPlayingInT, String>{
	@Query("select m_p from MoviesPlayingInT m_p where m_p.movie_name=?1 and date_format(m_p.date, '%Y-%m-%d')>=current_date() and time_format(m_p.time, '%H:%i')>time_format(current_time(), '%H:%i')")
	public List<MoviesPlayingInT> getMoviesPlayingById(String movie_name);
}
