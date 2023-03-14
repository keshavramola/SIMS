package com.login.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.model.DAOService;
import com.login.model.DAOServiceImpl;
@WebServlet("/listall")
public class GetAllRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GetAllRegistration() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession(false);  //logout code
	  if(session.getAttribute("email")!=null) {         //logout code
		  
		  
	  DAOService service = new DAOServiceImpl();
	  service.connectionDB();
	  ResultSet result = service.listRegistration();
	  
	  request.setAttribute("result", result);
	  RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/list_all.jsp");
	  rd.forward(request, response);
	  }else {
		  RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	      rd.forward(request, response);
	  }
	  
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
