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
@WebServlet("/update")
public class UpdateCantroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateCantroller() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String city = request.getParameter("city");
	    String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        
        request.setAttribute("name", name);
        request.setAttribute("city", city);
        request.setAttribute("email", email);
        request.setAttribute("mobile", mobile);
        
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/update_reg.jsp");
	    rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		  if(session.getAttribute("email")!=null) {
		String name = request.getParameter("name");
		String city = request.getParameter("city");
	    String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        
        DAOService service = new DAOServiceImpl();
        service.connectionDB();
        service.updateReg(name,city,email,mobile);
        
        ResultSet result = service.listRegistration();
		  
 	    request.setAttribute("result", result);
 	    RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/list_all.jsp");
        rd.forward(request, response);
	}else {
		 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	     rd.forward(request, response);
	}
	}

}
