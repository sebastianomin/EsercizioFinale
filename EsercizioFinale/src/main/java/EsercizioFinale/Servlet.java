package EsercizioFinale;


import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


  public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String nome = (String) request.getParameter("nome");
		String cognome = (String) request.getParameter("cognome");
		String dataNascita = (String) request.getParameter("dataNascita");
		String comuneNascita = (String) request.getParameter("comuneNascita");
		String sesso = (String) request.getParameter("sesso");
		
		Utente u=new Utente();
		
		String cf=u.calcolaCF(nome, cognome, dataNascita, comuneNascita, sesso);
		
         RequestDispatcher requestDispatcherObj = request.getRequestDispatcher("/seconda.jsp");
			
			
            request.setAttribute("cf", cf);
	
			requestDispatcherObj.forward(request, response);
			
	}
	}
