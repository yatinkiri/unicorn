package com.movies.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.movies.controller.*;
import com.movies.db.DbManager;


/**
 * Servlet implementation class regServlet
 */
@RequestMapping("/regServlet")
public class regServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@RequestMapping(value="/regServlet" , method = RequestMethod.POST )
   	public String details(ModelMap model) {
       
   		//model.addAttribute("info", "AMC Theaters");
    	
   		return "registrationsuccess";
   	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hdnParam	=	request.getParameter("pagename");
		// TODO Auto-generated method stub
		
		if(hdnParam.equals("register")){
		String uname = request.getParameter("txtuserName");
		String pass = request.getParameter("txtpassword");
		String fname = request.getParameter("txtFName");
		String lname = request.getParameter("txtLName");
		String email = request.getParameter("email");
		String city = request.getParameter("txtcity");
		
	
        String url="/registrationsuccess.jsp";
		
    	getServletContext().getRequestDispatcher(url).forward(request, response);
		
		Dataset sets = new Dataset();
		
		sets.setUname(uname);
		sets.setPass(pass);
		sets.setFname(fname);
		sets.setLname(lname);
		sets.setEmail(email);
		sets.setCity(city);
		
		try {
			DbManager.Insert(sets);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		/*if(hdnParam.equals("login")){
			String userName	=	request.getParameter("txtUserName");
			String password	=	request.getParameter("txtPassword");
			if((userName.equals("admin")) && (password.equals("admin"))){
				response.sendRedirect("admin.jsp");
			}else{
				getset set	=	new getset();
				
				set.setUname(userName);
				set.setPass(password);
				response.sendRedirect("welcome.jsp");
				
		}	}*/
	
		
	}
	
	

}
