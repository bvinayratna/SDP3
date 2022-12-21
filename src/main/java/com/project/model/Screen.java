package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Screens")
public class Screen {
	
	@Id
	@Column(nullable = false, length=100)
	private String screen_id;
	
	@Column(nullable = false, length = 250)
	private String admin_username;
	
	@Column(nullable = false, length = 10)
	private int screen_number;
	
	@Column(nullable = false, length = 2)
	private int total_rows;
	
	@Column(nullable = false, length = 2)
	private int total_columns;

	@Override
	public String toString() {
		return "Screen [screen_id=" + screen_id + ", admin_username=" + admin_username + ", screen_number="
				+ screen_number + ", total_rows=" + total_rows + ", total_columns=" + total_columns + "]";
	}

	public String getScreen_id() {
		return screen_id;
	}

	public void setScreen_id(String screen_id) {
		this.screen_id = screen_id;
	}

	public String getAdmin_username() {
		return admin_username;
	}

	public void setAdmin_username(String admin_username) {
		this.admin_username = admin_username;
	}

	public int getScreen_number() {
		return screen_number;
	}

	public void setScreen_number(int screen_number) {
		this.screen_number = screen_number;
	}

	public int getTotal_rows() {
		return total_rows;
	}

	public void setTotal_rows(int total_rows) {
		this.total_rows = total_rows;
	}

	public int getTotal_columns() {
		return total_columns;
	}

	public void setTotal_columns(int total_columns) {
		this.total_columns = total_columns;
	}


}
