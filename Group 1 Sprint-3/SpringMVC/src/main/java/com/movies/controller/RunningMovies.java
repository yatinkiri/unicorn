package com.movies.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RunningMovies {
	
	int movieID;
	String movieName;
	String movieDesc;
	String actor;
	String actress;
	String img;
	String newShowDate ;
	public String getNewShowDate() {
		return newShowDate;
	}


	public void setNewShowDate(String newShowDate) {
		this.newShowDate = newShowDate;
	}

	List<String> showTimes = new ArrayList<String>();
	List<String> dates = new ArrayList<String>();
	List<String> availability=new ArrayList<String>();
	
	public RunningMovies(){
		showtimes();
	}
	
	
	public List<String> getShowTimes() {
		return showTimes;
	}
	public void setShowTimes(List<String> showTimes) {
		this.showTimes = showTimes;
	}
	
	
	public int getMovieID() {
		return movieID;
	}


	public void setMovieID(int movieID) {
		this.movieID = movieID;
	}


	public List<String> getAvailability() {
		return availability;
	}


	public void setAvailability(List<String> availability) {
		this.availability = availability;
	}


	public List<String> getDates() {
		return dates;
	}
	public void setDates(List<String> dates) {
		this.dates = dates;
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
	
	public List<String> showtimes (){
		showTimes.add("09:00:00");
		showTimes.add("12:00:00");
		showTimes.add("15:00:00");
		showTimes.add("18:00:00");
		return showTimes;
		
	}
	
	
}
