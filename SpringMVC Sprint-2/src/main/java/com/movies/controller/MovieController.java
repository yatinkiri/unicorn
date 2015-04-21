package com.movies.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.movies.db.DbManager;

@Controller
//@RequestMapping("/Homepage")
public class MovieController {

	/*@RequestMapping(value="/{name}", method = RequestMethod.GET)
	public String getMovie(@PathVariable String name, ModelMap model) {

		model.addAttribute("movie", name);
		return "Homepage";

	}*/
	
	@RequestMapping(value="/Homepage" , method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
 
		//model.addAttribute("info", "AMC Theaters");
		model.addAttribute("greeting", "Welcome,Guest!");
		return "Homepage";
	}
	
	@RequestMapping(value = "/redirect", method = RequestMethod.GET)
	public String redirect() {
		     
		      return "redirect:LoginPage";
		   }
		   
    @RequestMapping(value = "/LoginPage", method = RequestMethod.GET)
	public String login() {
		     
		      return "LoginPage";
		   }
    
    @RequestMapping(value = "/runmov", method = RequestMethod.GET)
	public String runmov() {
		     
		      return "redirect:RunningMovies";
		   }
    
    @RequestMapping(value = "/RunningMovies")
	public String runningmovies(ModelMap map) throws Exception {
    	DbManager db = new DbManager();
    	ArrayList<RunningMovies> result = db.getMovieDetails();
    	//List<String> dates = db.getShowDates(name);
    	map.addAttribute("result",result);
		      return "RunningMovies";
		   }
    
       
       @RequestMapping(value = "/UpcomingMovies")
   	public String upcomingmovies(ModelMap map) throws Exception {
    	   DbManager db = new DbManager();
       	ArrayList<UpcomingMovies> result = db.getUpcomingMovieDetails();
       	map.addAttribute("result",result);
   		      return "UpcomingMovies";
   		   }
       
   
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginCred() {
    	System.out.println("entered");
       return new ModelAndView("LoginPage", "command", new Dataset());
    }
    
    @RequestMapping(value="/login")
   	public String loginCred(@ModelAttribute("SpringWeb")Dataset dataset ,ModelMap model) throws Exception {
        DbManager db = new DbManager();
        System.out.println("Data : "+ dataset);
   		int check = db.checkuser(dataset);
   		if(check==1 ){
   			if(dataset.getUname()!="admin"){
   			//model.addAttribute("User", dataset.getUname());
   			System.out.println(dataset.getUname());
   			model.addAttribute("greeting", "Welcome, "+ dataset.getUname().toUpperCase()+" !");
   			return "Homepage";
   			}else{
   				return "AdminHomepage";
   			}
   		} 
   			else {
   		
   			System.out.println("gajfhjsdf");
   			model.addAttribute("message","Please sign in !");
   			return "LoginPage";
   		}
   		
   	}
    
    @RequestMapping(value="/register" )
   	public String register(ModelMap model) {
       
   		//model.addAttribute("info", "AMC Theaters");
    	
   		return "register";
   	}
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView details() {
       return new ModelAndView("register", "command", new Dataset());
    }
    
    @RequestMapping(value="/regServlet" )
   	public String success(@ModelAttribute("SpringWeb")Dataset dataset ,ModelMap model) {
       
   		//model.addAttribute("info", "AMC Theaters");
    	try {
			DbManager.Insert(dataset);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	model.addAttribute("fname", dataset.getFname());
    	
   		return "registrationsuccess";
   	}
    
    @RequestMapping(value = "/admin")
   	public String admin() {
   		     
   		      return "admin";
   		   }
    
    @RequestMapping(value = "/test")
   	public String test() {
   		     
   		      return "test";
   		   }
    
    @RequestMapping(value = "/validate" , method = RequestMethod.GET)
   	public String validate() {
   		     
   		      return "validate";
   		   }
    
    @RequestMapping(value = "/AddMovies" , method = RequestMethod.GET)
   	public String addmovies() {
   		     
   		      return "AddMovies";
   		   }
    
    @RequestMapping(value = "/AddUpcomingMovies" )
   	public String addUpcomingMovies() {
   		     
   		      return "AddUpcomingMovies";
   		   }
    
    @RequestMapping(value = "/cascade")
    public String times(@RequestParam("hello")String res , Model model) {
    	System.out.println("entered");
    	System.out.println("....... : " +res);
       return "RunningMovies";
    }
    
    @RequestMapping(value = "/addmov", method = RequestMethod.GET)
    public ModelAndView addMovs() {
    	System.out.println("entered");
       return new ModelAndView("AddMovies", "command", new RunningMovies());
    }
    
    @RequestMapping(value="/addMov")
   	public String addMov(@ModelAttribute("SpringWeb")RunningMovies run ,ModelMap model) throws Exception {
        DbManager db = new DbManager();
        System.out.println(run.getMovieName());
        db.insertRunningMovies(run);
        model.addAttribute("msg", "Movie Added Successfully!");
   		return "AddMovies";
   	}
    
    @RequestMapping(value = "/addUpMov", method = RequestMethod.GET)
    public ModelAndView addUpMovs() {
    	System.out.println("entered");
       return new ModelAndView("AddUpcomingMovies", "command", new UpcomingMovies());
    }
    
    @RequestMapping(value="/addUpMov")
   	public String addUpMov(@ModelAttribute("SpringWeb")UpcomingMovies run ,ModelMap model) throws Exception {
        DbManager db = new DbManager();
        //System.out.println(run.getMovieName());
        db.insertUpcomingMovies(run);
        model.addAttribute("msg", "Movie Added Successfully!");
   		return "AddUpcomingMovies";
   	}
    
    @RequestMapping(value = "/Running" )
   	public String home() {
   		     
   		      return "Running";
   		   }
    
	}
	
