package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.RecintosDTO;
import dto.ReservaCanchaDTO;
import modelo.RecientoDAO;
import modelo.ReservaCanchaDAO;

//@WebServlet("/ServletRecinto")
@WebServlet(name ="ServletRecinto", urlPatterns = {"/ServletRecinto"})
public class ServletRecinto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletRecinto() {
        super();
     }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	ReservaCanchaDAO reservDAO = new ReservaCanchaDAO();
    	RecientoDAO resintoDAO = new RecientoDAO();
    	List<RecintosDTO> datos = new ArrayList();
    	
    
   	 try {
    		if(request.getParameter("btnGuardarReserva")!=null) {
   				String fecha = request.getParameter("txtFechaCanchaDisp");
   				String hora = request.getParameter("txtHoraCanchaDisp");
   				String numero =	request.getParameter("txtNumCanchaDisp");
   				int codigo = Integer.parseInt(request.getParameter("txtCodigoCanchaDisp"));
   				String run =request.getParameter("txtRunUsuarioCanchaDisp");
   	 			if(fecha.trim().equals("")||hora.trim().equals("")||numero.trim().equals("")||run.equals("")) {
   					String error = "campos vacios";
   					request.getSession().setAttribute("error", error);
   					request.getRequestDispatcher("error.jsp").forward(request, response);
   	 				}else {
	   					  ReservaCanchaDTO s = new ReservaCanchaDTO(fecha, hora, codigo, 1, run, numero);
	   					  RecintosDTO r = new RecintosDTO(codigo, 2);
	   					  if(reservDAO.crear(s)==true && resintoDAO.modificar(r)==true ) {
	   						String error = "reservo correctamente";
	   						request.getSession().setAttribute("error", error);
	   						request.getRequestDispatcher("ReultadoCanch.jsp").forward(request, response);
		   					 }else {
		   						 	String error = "error en la insercion";
		   						 	request.getSession().setAttribute("error", error);
		   						 	request.getRequestDispatcher("error.jsp").forward(request, response);
		   					 }
   	 					   }
   				}
   	 	} catch (Exception e) {
   			e.printStackTrace();
   		}
   	 } 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

}
