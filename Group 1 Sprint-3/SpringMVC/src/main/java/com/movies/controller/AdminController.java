package com.movies.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.movies.db.DbManager;

@Controller
@SessionAttributes({ "dataset", "greeting", "change", "log", "admin","hide" ,"img"})
public class AdminController {

	@RequestMapping(value = "/AddMovies", method = RequestMethod.GET)
	public String addmovies() {

		return "AddMovies";
	}

	@RequestMapping(value = "/DeleteMovies")
	public String deletemovies(ModelMap map) throws Exception {
		DbManager db = new DbManager();
    	ArrayList<RunningMovies> result = db.getMovieDetails();
    	//List<String> dates = db.getShowDates(name);
    	map.addAttribute("result",result);
		return "DeleteMovies";
	}

	@RequestMapping(value = "/AddUpcomingMovies")
	public String addUpcomingMovies() {

		return "AddUpcomingMovies";
	}

	@RequestMapping(value = "/addmov", method = RequestMethod.GET)
	public ModelAndView addMovs() {
		System.out.println("entered");
		return new ModelAndView("AddMovies", "command", new RunningMovies());
	}

	@RequestMapping(value = "/deletemov", method = RequestMethod.GET)
	public ModelAndView deleteMov() {
		System.out.println("entered");
		return new ModelAndView("DeleteMovies", "command", new RunningMovies());
	}

	@RequestMapping(value = "/addMov")
	public String addMov(@ModelAttribute("SpringWeb") RunningMovies run,
			ModelMap model) throws Exception {
		DbManager db = new DbManager();
		System.out.println(run.getMovieName());
		db.insertRunningMovies(run);
		model.addAttribute("msg", "Movie Added Successfully!");
		return "AddMovies";
	}

	@RequestMapping(value = "/deleteMov")
	public String deleteMov(@ModelAttribute("SpringWeb") RunningMovies run,
			ModelMap model) throws Exception {
		DbManager db = new DbManager();
		System.out.println("hi");
		System.out.println(run.getMovieName());
		db.deleteRunningMovies(run);
		model.addAttribute("msg", "Movie Deleted Successfully!");
		return "DeleteMovies";
	}

	@RequestMapping(value = "/addUpMov", method = RequestMethod.GET)
	public ModelAndView addUpMovs() {
		System.out.println("entered");
		return new ModelAndView("AddUpcomingMovies", "command",
				new UpcomingMovies());
	}

	@RequestMapping(value = "/addUpMov")
	public String addUpMov(@ModelAttribute("SpringWeb") UpcomingMovies run,
			ModelMap model) throws Exception {
		DbManager db = new DbManager();
		// System.out.println(run.getMovieName());
		db.insertUpcomingMovies(run);
		model.addAttribute("msg", "Movie Added Successfully!");
		return "AddUpcomingMovies";
	}

	@RequestMapping(value = "/adminHomepage")
	public String home(ModelMap model) {
		model.addAttribute("log", "block");
		model.addAttribute("hide", "block");
		model.addAttribute("greeting", "Welcome , Admin!");
		model.addAttribute("admin", "admin");
		return "adminHomepage";
	}
	
	//PAYMENT
	
	@RequestMapping(value = "/payment" , method = RequestMethod.GET)
	public ModelAndView payments() {
		System.out.println("entered");
		return new ModelAndView("Payment", "command", new Payment());
	}
	
	
// Payment page migration from here
	
	@RequestMapping(value = "/Payment", method = RequestMethod.GET)
	public String addPayment(HttpSession session) {
		Dataset set = (Dataset) session.getAttribute("dataset");
		//System.out.println("Its good"+ img);
		if(set!=null){
		return "Payment";
		}else{
			return "LoginPage";
		}
	}
	
	@RequestMapping(value = "/payment")
	public String Payment(@ModelAttribute("SpringWeb") Payment run,
			ModelMap model,HttpSession session) throws Exception {
		DbManager db = new DbManager();
		System.out.println("Check Point");
		System.out.println(run.getCname());
		Dataset set = (Dataset) session.getAttribute("dataset");
		String uname = set.getUname();
		//run.setCname(uname);
		System.out.println(set.getUname());
		db.insertPayment(run,uname);
		model.addAttribute("msg", "Success");
		//model.addAttribute("img", img);
		return "redirect:PaymentSuccess";
	}
	
	@RequestMapping(value = "/AddShowTimes", method = RequestMethod.GET)
    public ModelAndView addShowTimes() {
    	System.out.println("entered");
       return new ModelAndView("RunningMovies", "command", new RunningMovies());
    }
    
    @RequestMapping(value="/AddShowTimes")
   	public String addShowTimes(@ModelAttribute("SpringWeb")RunningMovies run ,ModelMap model) throws Exception {
        DbManager db = new DbManager();
        //System.out.println(run.getMovieName());
        //run.setMovieID(Integer.valueOf(id));
        //System.out.println("value is : " + id);
        db.insertShowTimes(run);
        System.out.println("DONE");
        model.addAttribute("msg", "Show Times Added Successfully!");
   		return "redirect:RunningMovies";
   	}
    
    @RequestMapping(value = "/PaymentSuccess", method = RequestMethod.GET)
    public String paymentSuccess() {
    	System.out.println("entered 15656");
       return "PaymentSuccess";
    }
    
    

}
