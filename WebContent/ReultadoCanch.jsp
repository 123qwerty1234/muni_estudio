
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>

<%@page import="dto.RecintosDTO" %>
<%@page import="modelo.RecientoDAO" %>

<%@page import="modelo.ReservaCanchaDAO" %>
<%@page import="dto.ReservaCanchaDTO" %>

<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="">

    <title>Resultado canchas</title>

    <!-- Bootstrap core CSS -->
   <link href="./recursos/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./recursos/css/pricing.css" rel="stylesheet">
 
  </head>
  
  <%
 			 List<RecintosDTO> datos = new ArrayList();
  			 RecientoDAO dao = new RecientoDAO();
    		
    		 List<ReservaCanchaDTO> datos_cancha = new ArrayList();
    		 ReservaCanchaDAO dao_cancha = new ReservaCanchaDAO();
    		
  
  %>

  <body>


    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
     <img class="mb-2" src="./recursos/img/alpha-m-box.svg" alt="" width="50" height="50"> <h5 class="my-0 mr-md-auto font-weight-normal">Municipio de deporte</h5>
      <nav class="my-2 my-md-0 mr-md-3">
        <a class="btn btn-outline-primary" href="#">Cerrear</a>
       </nav>
  <!--<a class="btn btn-outline-primary" href="#">Sign up</a>-->
    </div>

    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">Disponible</h1>
      
    </div>
    <div class="container">
        <div class="card-deck mb-3 text-center">
            <div class="alert alert-primary" role="alert">
                   CANCHAS EL ALTO
                  </div>
                  <%
				String  error = (String) request.getSession().getAttribute("error");	
				if(error!=null){
					
				
				%>
				<div class="alert alert-success" role="alert"><%=error %></div><br>
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModale">MIS RESERVAS</button>
                 
<%
}
%>
            
            
            <!-- INICIO MODAL---------------------------------------------------------------------- -->
            
            
            


<!-- Modal -->
<div class="modal fade" id="exampleModale" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Mis reservas</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      
        <!-- INICIO CONTENIDO MODAL---------------------------------------------------------------------- -->
        
        <table class="table table-responsive">
             <thead>
              
                    <tr>
                        
                        <td scope="col">Fecha reserva</td>	
                         <td scope="col">Hora reserva</td>	
                          <td scope="col">Usuarios</td>	
                           <td scope="col">Numero Cancha</td>
                      </tr>
   
			  </thead>
                 
             <tbody>
                   
                      		<%
                      		datos_cancha = dao_cancha.leer();
                      		for(ReservaCanchaDTO p : datos_cancha){
                      			
                      		%>
                      	<tr>   
                      	 
        
                      		
                      		 <td><%=p.getRes_can_fecha_reserva()%></td>
                      		 <td><%=p.getRes_can_hora_reserva_inicio() %></td>
                      		<td><%=p.getUsuarios_usu_run() %></td>
                      		 <td><%=p.getRes_can_numero() %></td>
                      		 
                      		 	                     		    
                 
                		 
                      		
                      	 </tr>
                  <%
                      } 
                      %>  
                           </tbody> 
               
                          		
                      		                       		
                                         
                 
                  </table>
        
        
        
        
        
        <!-- FIN    CONTENIDO MODAL---------------------------------------------------------------------- -->
       
       
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Aceptar</button>
      </div>
    </div>
  </div>
</div>

            <!-- FIN  MODAL---------------------------------------------------------------------- -->
            
            <table class="table table-responsive">
             <thead>
                     <tr>
                        <td scope="col" class=".visible-xs">id</td>
                        <td scope="col">nombre</td>	
                         <td scope="col">fecha dispo</td>	
                          <td scope="col">Numero cancha</td>	
                           <td scope="col">hora disponible</td>	
                       </tr>
   
			  </thead>
                 
             <tbody>
                   
                      		<%
                      		datos = dao.leer();
                      		for(RecintosDTO p : datos){
                      			
                      		%>
                      	<tr>   
                      	 
        
                      		<td class=".visible-xs"><%=p.getCan_id() %></td>
                      		 <td><%=p.getCan_nombre()%></td>
                      		 <td><%=p.getCan_fecha_disp() %></td>
                      		 <td><%=p.getCan_numero_cancha() %></td>
                      		 <td><%=p.getRec_hora_disp() %></td>
                      		 <td>  <input class="btn btn-block btn-outline-primary" type="button" data-toggle="modal" data-target="#exampleModal" value="reservar" name="boton" onclick="Cargar_registros('<%=p.getCan_id()%>',
                      		 														  '<%=p.getCan_nombre()%>',
                      		 													 	  '<%=p.getCan_fecha_disp() %>',
                      		 														  '<%=p.getCan_numero_cancha()%>',
                      		 														  '<%=p.getRec_hora_disp()%>')"/> </td>
 			                     		                     		    
                 
                		 
                      		
                      	 </tr>
                  <%
                      } 
                      %>  
                           </tbody> 
               
                          		
                      		                       		
                                         
                 
                  </table>
                  
                  

                  
                  
        <!--SCRIP RELLENO -->      

		<script lang="JavaScript">
            function Cargar_registros(idCanchaD,nombreCanchaD, fechaCanchD, numCanchaD, horaCanchaD){
                document.formReserva.txtCodigoCanchaDisp.value = idCanchaD;
                document.formReserva.txtNombreCanchaDisp.value = nombreCanchaD;
                document.formReserva.txtFechaCanchaDisp.value = fechaCanchD;
                document.formReserva.txtNumCanchaDisp.value = numCanchaD;
                document.formReserva.txtHoraCanchaDisp.value = horaCanchaD;
               
            }
        </script>


  <!--SCRIP RELLENO -->      
                  

<!-- INICIO MODAL--------------------------- -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Reservar Cancha</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <!--FCONTENIDO MODAL INICIO---------------------------- novalidate-->
    		
     
 <form action="./ServletRecinto" method="POST" class="needs-validation" name="formReserva" novalidate>
  <div class="form-row">
    <div class="col-md mb-3">
      <label for="txtCodigoCanchaDisp">Código Cancha</label>
      <input type="text" class="form-control" name="txtCodigoCanchaDisp" placeholder="?"  required>
      <div class="invalid-feedback">
        Ingresa Código
      </div>
    </div>
    <div class="col-md mb-3">
      <label for="txtActivoCanchaDisp">Estado Cancha</label>
      <input type="text" class="form-control" name="txtActivoCanchaDisp" placeholder="First name" value="Activo" required>
      <div class="invalid-feedback">
        Ingresa Estado
      </div>
    </div>
  
    </div>
    <div class="form-row">
    <div class="col-md mb-3">
      <label for="txtRunUsuarioCanchaDisp">Run Reservante</label>
      <input type="text" class="form-control" name="txtRunUsuarioCanchaDisp" placeholder="17917387" required>
      <div class="invalid-feedback">
        Ingresa Run
      </div>
    </div>
  
    </div>
    <div class="form-row">
    <div class="col-md mb-3">
      <label for="txtFechaCanchaDisp">Fecha Cancha</label>
      <input type="text" class="form-control" name="txtFechaCanchaDisp" placeholder="Last name"  required>
      <div class="invalid-feedback">
        Ingresa Fecha
      </div>
    </div>
     <div class="col-md mb-3">
      <label for="txtNumCanchaDisp">Nummero cancha </label>
      <input type="text" class="form-control" name="txtNumCanchaDisp" placeholder="Last name"  required>
      <div class="invalid-feedback">
       Ingresa Nummero
      </div>
    </div>
  </div>
 
   <div class="form-row">
    <div class="col-md mb-3">
      <label for="txtHoraCanchaDisp">Hora Cancha</label>
      <input type="text" class="form-control" name="txtHoraCanchaDisp" placeholder="Last name"  required>
      <div class="invalid-feedback">
       Ingresa Hora
      </div>
    </div>
      <div class="col-md mb-3">
      <label for="txtNombreCanchaDisp">Nombre Cancha</label>
      <input type="text" class="form-control" name="txtNombreCanchaDisp" placeholder="Last name"  required>
      <div class="invalid-feedback">
        Ingresa Nombre
      </div>
    </div>
    
   
  </div>
   <div class="form-row">
     <input type="submit" name="btnGuardarReserva" class="btn btn-primary" value="Reservar"/>
  
      <button type="button" class="btn btn-secondary" data-dismiss="modal">cerrar</button>
      </div>
     </form>
  
  
 



   
      </div>
      <div class="modal-footer">
       
        
      </div>
    </div>
 
    
  </div>
</div>

<script>

(function() {
  'use strict';
  window.addEventListener('load', function() {
  
    var forms = document.getElementsByClassName('needs-validation');
 
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
      
      
      
      
      
      
      
      
       <!--FCONTENIDO MODAL INICIO---------------------------- -->
      
     



<!--FIJN DE MODAL---------------------------- -->

            
     </div>     
   
           
        

    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   
   
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
      <script src="./recursos/js/holder.min.js"></script>
    
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>