package com.movies.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RunningMovies {
	
	String movieName;
	String movieDesc;
	String actor;
	String actress;
	String img;
	Map<String,String> showTimes = new HashMap<String, String>();
	List<String> dates = new ArrayList<String>();
	
	
	public List<String> getDates() {
		return dates;
	}
	public void setDates(List<String> dates) {
		this.dates = dates;
	}
	public Map<String, String> getShowTimes() {
		return showTimes;
	}
	public void setShowTimes(Map<String, String> showTimes) {
		this.showTimes = showTimes;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieDesc() {
		return movieDesc;
	}
	public void setMovieDesc(String movieDesc) {
		this.movieDesc = movieDesc;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getActress() {
		return actress;
	}
	public void setActress(String actress) {
		this.actress = actress;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
}
