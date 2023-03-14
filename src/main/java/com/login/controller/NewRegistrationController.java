package com.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.model.DAOService;
import com.login.model.DAOServiceImpl;
@WebServlet("/newReg")
public class NewRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NewRegistrationController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/new_registration.jsp");
	    rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   HttpSession session = request.getSession(false); //logout code
	   if(session.getAttribute("email")!=null) {        //logout code
		
	   String name = request.getParameter("name");
	   String city = request.getParameter("city");
	   String email = request.getParameter("email");
	   String mobile = request.getParameter("mobile");
	   
	   DAOService service = new DAOServiceImpl();
	   service.connectionDB();
	   service.saveReg(name,city,email,mobile);
	   
	   request.setAttribute("msg", "Record is saved!!");
	   
	   RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/new_registration.jsp");
       rd.forward(request, response);
	   }else {                                           //logout code
		   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	       rd.forward(request, response);
	   }
	}

}
