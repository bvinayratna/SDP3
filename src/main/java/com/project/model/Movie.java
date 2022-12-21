package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="movies_in_theaters")
public class Movie {
	
	@Id
	@Column(nullable = false, length=250)
	private String name;
	
	@Column(nullable = false, unique = true, length=1500)
	private String image;
	
	@Column(nullable = false, length=200)
	private String directors;
	
	@Column(nullable = false, length=6)
	private String year;
	
	@Column(nullable = false, length=150)
	private String genres;
	
	@Column(nullable = false, length=50)
	private String runtimeStr;
	
	@Column(nullable = false, length=1500)
	private String plot;
	
	@Column(nullable = false, length=200)
	private String languages;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDirectors() {
		return directors;
	}

	public void setDirectors(String directors) {
		this.directors = directors;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getGenres() {
		return genres;
	}

	public void setGenres(String genres) {
		this.genres = genres;
	}

	public String getRuntimeStr() {
		return runtimeStr;
	}

	public void setRuntimeStr(String runtimeStr) {
		this.runtimeStr = runtimeStr;
	}

	public String getPlot() {
		return plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}
	
	public String getLanguages() {
		return languages;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}

	@Override
	public String toString() {
		return "Movie [name=" + name + ", image=" + image + ", directors=" + directors + ", year=" + year + ", genres="
				+ genres + ", runtimeStr=" + runtimeStr + ", plot=" + plot + ", languages=" + languages + "]";
	}
}
