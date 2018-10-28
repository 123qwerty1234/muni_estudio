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
    		if(request.getParameter("btnGuardarReserva")!=null) {// cuando el boton se preciona
   				String fecha = request.getParameter("txtFechaCanchaDisp");//capturamos valores
   				String hora = request.getParameter("txtHoraCanchaDisp"); // apturamos valores
   				String numero =	request.getParameter("txtNumCanchaDisp"); //apturamos valores
   				int codigo = Integer.parseInt(request.getParameter("txtCodigoCanchaDisp")); //apturamos valores
   				String run =request.getParameter("txtRunUsuarioCanchaDisp"); //apturamos valores
   	 			if(fecha.trim().equals("")||hora.trim().equals("")||numero.trim().equals("")||run.equals("")) {// preguntamo que no esten null
   					String error = "campos vacios"; //creamos un mensaje
   					request.getSession().setAttribute("error", error); // lo guardamos
   					request.getRequestDispatcher("error.jsp").forward(request, response);// lo enviamos
   	 				}else {// si es positivo
	   					  ReservaCanchaDTO s = new ReservaCanchaDTO(fecha, hora, codigo, 1, run, numero);// creamos nuestro obj
	   					  RecintosDTO r = new RecintosDTO(codigo, 2); // creamos nuestro objeto
	   					  if(reservDAO.crear(s)==true && resintoDAO.modificar(r)==true ) {//si es true el metodo 
	   						String error = "reservo correctamente"; // mensaje
	   						request.getSession().setAttribute("error", error); //preaparamos
	   						request.getRequestDispatcher("ReultadoCanch.jsp").forward(request, response);// lo enviamos
		   					 }else {
		   						 	String error = "error en la insercion"; // si no error en la insercion y loo mismo
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
