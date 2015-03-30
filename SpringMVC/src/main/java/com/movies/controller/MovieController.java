package com.movies.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
   
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginCred() {
       return new ModelAndView("LoginPage", "command", new Dataset());
    }
    
    @RequestMapping(value="/login")
   	public String loginCred(@ModelAttribute("SpringWeb")Dataset dataset ,ModelMap model) throws Exception {
        DbManager db = new DbManager();
        System.out.println("Data : "+ dataset);
   		int check = db.checkuser(dataset);
   		if(check==1){
   			//model.addAttribute("User", dataset.getUname());
   			System.out.println(dataset.getUname());
   			model.addAttribute("greeting", "Welcome, "+ dataset.getUname().toUpperCase()+" !");
   		}
   		return "Homepage";
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
    
    
    
	}
	
