package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="moviesplaying")
public class MoviesPlayingInT {
	
	@Id
	@Column(nullable = false, length=200)
	private String play_id;
	
	@Column(nullable = false, length=100)
	private String admin_username;
	
	@Column(nullable = false, length=100)
	private String theater_name;
	
	@Column(nullable = false, length=2)
	private int screen;
	
	@Column(nullable = false, length = 200)
	private String movie_name;
	
	@Column(nullable = false, length=50)
	private String language;
	
	@Column(nullable = false, length = 30)
	private String date;
	
	@Column(nullable = false, length = 30)
	private String time;

	public String getPlay_id() {
		return play_id;
	}

	public void setPlay_id(String play_id) {
		this.play_id = play_id;
	}

	public String getAdmin_username() {
		return admin_username;
	}

	public void setAdmin_username(String admin_username) {
		this.admin_username = admin_username;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getScreen() {
		return screen;
	}

	public void setScreen(int screen) {
		this.screen = screen;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	@Override
	public String toString() {
		return "MoviesPlayingInT [play_id=" + play_id + ", admin_username=" + admin_username + ", theater_name="
				+ theater_name + ", screen=" + screen + ", movie_name=" + movie_name + ", language=" + language
				+ ", date=" + date + ", time=" + time + "]";
	}
}
