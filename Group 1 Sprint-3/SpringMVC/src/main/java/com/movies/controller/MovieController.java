package com.movies.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpSession;

import org.seleniumhq.jetty7.server.Request;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.movies.db.DbManager;

@Controller
@SessionAttributes({"dataset","greeting","change","log","hide"})
//@RequestMapping("/Homepage")
public class MovieController {

	/*@RequestMapping(value="/{name}", method = RequestMethod.GET)
	public String getMovie(@PathVariable String name, ModelMap model) {

		model.addAttribute("movie", name);
		return "Homepage";

	}*/
	
	
	
	@RequestMapping(value="/Homepage" , method = RequestMethod.GET)
	public ModelAndView Homepage(ModelMap model) {
 
		//model.addAttribute("info", "AMC Theaters");
		ModelAndView view = new ModelAndView("Homepage");
		if(model.containsAttribute("dataset")){
			System.out.println("im here");
			model.addAttribute("hide", "none");
			return view;
		}else{
			System.out.println("oops");
		model.addAttribute("greeting", "Welcome,Guest!");
		model.addAttribute("change", "block");
		model.addAttribute("log", "none");
		model.addAttribute("hide", "none");
		return view;
		}
	}
	
	/*@RequestMapping(value = "/redirect", method = RequestMethod.GET)
	public String redirect() {
		     
		      return "redirect:LoginPage";
		   }*/
		   
    @RequestMapping(value = "/LoginPage", method = RequestMethod.GET)
	public String login() {
		     
		      return "LoginPage";
		   }
    
   /* @RequestMapping(value = "/runmov", method = RequestMethod.GET)
	public String runmov() {
		     
		      return "redirect:RunningMovies";
		   }*/
    
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
    
    //---Login and Logout ---//
    
    @RequestMapping(value="/login")
   	public String loginCred(@ModelAttribute("SpringWeb")Dataset dataset ,ModelMap model , HttpSession session) throws Exception {
        DbManager db = new DbManager();
        System.out.println("Data : "+ dataset);
   		int check = db.checkuser(dataset);
   		if(check==1 ){
   			if(!(dataset.getUname().equalsIgnoreCase("admin"))){
   			//model.addAttribute("User", dataset.getUname());
   			model.addAttribute("dataset", dataset);
   			//System.out.println(dataset.getUname());
   			model.addAttribute("greeting", "Welcome, "+ dataset.getUname().toUpperCase()+" !");
   			model.addAttribute("change", "none");
   			model.addAttribute("log", "block");
   			//ModelAndView home = new ModelAndView("Homepage");
   			return "redirect:Homepage";
   			}else{
   				//ModelAndView adminhome = new ModelAndView("adminHomepage");
   				return "redirect:adminHomepage";
   			}
   		} 
   			else {	
   		
   			//System.out.println("gajfhjsdf");
   			model.addAttribute("message","Please sign in !");
   			//ModelAndView login = new ModelAndView("LoginPage");
   			return "redirect:LoginPage";
   		}
   		
   	}
    
    @RequestMapping(value = "/Logout" )
   	public ModelAndView logout(HttpSession session,ModelMap map) {
        //@ModelAttribute("dataset")Dataset set ,     
    	session.invalidate();
             if(map.containsKey("dataset")){
            	 //System.out.println("admin entrd");
            	 map.remove("dataset");
             }
            // map.remove("dataset");
             if(map.containsKey("admin")){
            	 System.out.println("admin entrd");
            	 map.remove("admin");
             }
            MovieController mov = new MovieController();
            ModelAndView view = mov.Homepage(map);
   		      return view;
   		   }
    
    //--Registration--//
    
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
    
    @RequestMapping(value = "/validate" , method = RequestMethod.GET)
   	public String validate() {
   		     
   		      return "validate";
   		   }
    
    @RequestMapping(value = "/populate" , method = RequestMethod.GET)
   	public String populate() {
   		     
   		      return "populate";
   		   }
    
    @RequestMapping(value = "/try" , method = RequestMethod.GET)
   	public String trial() {
   		     
   		      return "try";
   		   }
    
    
    @RequestMapping(value = "/populateTimes" , method = RequestMethod.GET)
   	public String populateTimes() {
   		     
   		      return "populateTimes";
   		   }
    @RequestMapping(value = "/populateNewTimes" , method = RequestMethod.GET)
   	public String populateNewTimes() {
   		     
   		      return "populateNewTimes";
   		   }
    
    
    @RequestMapping(value = "/Runn" , method = RequestMethod.GET)
   	public void Runn(@RequestParam("hello")String xyz ) {
   		     System.out.println("zsgfjharj");
   		     System.out.println(xyz);
   		      //return "RunningMovies";
   		   }
    
   /* @RequestMapping(value = "/admin")
   	public String admin() {
   		     
   		      return "admin";
   		   }
    
    @RequestMapping(value = "/test")
   	public String test() {
   		     
   		      return "test";
   		   }
    */
  
    
    /*@RequestMapping(value = "/AddMovies" , method = RequestMethod.GET)
   	public String addmovies() {
   		     
   		      return "AddMovies";
   		   }
    
    @RequestMapping(value = "/AddUpcomingMovies" )
   	public String addUpcomingMovies() {
   		     
   		      return "AddUpcomingMovies";
   		   }
    */
   /* @RequestMapping(value = "/cascade")
    public String times(@RequestParam("hello")String res , Model model) {
    	System.out.println("entered");
    	System.out.println("....... : " +res);
       return "RunningMovies";
    }*/
    
   /* @RequestMapping(value = "/addmov", method = RequestMethod.GET)
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
    
    @RequestMapping(value = "/adminHomepage" )
   	public String home() {
   		     
   		      return "adminHomepage";
   		   }*/
   
    
	}
	
