<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="">
<script src="http://code.jquery.com/jquery-latest.js"></script>
    <title>Canchas</title>

       <link href="./recursos/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./recursos/css/pricing.css" rel="stylesheet">
  </head>

  <body>


    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
     <img class="mb-2" src="./recursos/img/alpha-m-box.svg" alt="" width="50" height="50"> <h5 class="my-0 mr-md-auto font-weight-normal">Municipio de deporte</h5>
      <nav class="my-2 my-md-0 mr-md-3">
        <a class="btn btn-outline-primary" href="#">Cerrear</a>
       </nav>
  <!--<a class="btn btn-outline-primary" href="#">Sign up</a>-->
    </div>

    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">Canchas</h1>
      
    </div>

    <div class="container">
      <div class="card-deck mb-3 text-center">
            <div class="card mb-4 shadow-sm">
          
                    <img class="card-img" src="./recursos/img/vertic_880_0.jpg" alt="Card image">
                    <div class="card-img-overlay">
                             <h5 class="card-title bg-warning text-white">Cancha el Alto</h5>
                      
                             <p class="card-text">&nbsp;</p>
                             <button type="button" class="btn btn-primary" data-toggle="modal" onclick="location.href='ReultadoCanch.jsp' " data-target="#exampleModal">
                                    Reservar aquí</button>
                                   </div>
                                   
                           </div><!--fin card 1-->
               
                               <!-- INICO MODA------------------------------------------------------------------------------>
                                <!-- INICO MODA------------------------------------------------------------------------------>
                             <!-- INICO MODA------------------------------------------------------------------------------>
                             <!-- Button trigger modal -->
               
                     
                     <!-- Modal -->
                
    
                                                        

               <script>
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
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

<script>
	$(document).ready(function() {
		$('#submit').click(function(event) {
			var FechaVar = $('#txtFecha').val();
			var HoraVar = $('#txtHora').val();
			
			// Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
			$.post('./RecientoServlet', {
				fecha : FechaVar,
				hora: HoraVar
			}, function(responseText) {
				$('#tabla').html(responseText);
			});
		});
	});
</script>





            
               
                              <!-- FIN MODA------------------------------------------------------------------------------>
                               <!-- FIN MODA------------------------------------------------------------------------------>
                                <!-- FIN MODA------------------------------------------------------------------------------>
               
               
        <div class="card mb-4 shadow-sm">
          
                    <img class="card-img" src="./recursos/img/vertic_880_0.jpg" alt="Card image">
                    <div class="card-img-overlay">
                             <h5 class="card-title bg-warning text-white">Cancha el Bajo</h5>
                      
                             <p class="card-text">&nbsp;</p>
                      <button type="button" class="btn btn-primary">Reservar aquí</button>
                    </div>
                    
        </div>
        <div class="card mb-4 shadow-sm">
          
                <img class="card-img" src="./recursos/img/vertic_880_0.jpg" alt="Card image">
                    <div class="card-img-overlay">
                             <h5 class="card-title bg-warning text-white">Cancha el medio</h5>
                      
                             <p class="card-text">&nbsp;</p>
                      <button type="button" class="btn btn-primary">Reservar aquí</button>
                    </div>
                
    </div>
            
         
        </div>
     
      </div>
      <div class="container">
            <div class="card-deck mb-3 text-center">
                  <div class="card mb-4 shadow-sm">
                
                        <img class="card-img" src="./recursos/img/vertic_880_0.jpg" alt="Card image">
                        <div class="card-img-overlay">
                                 <h5 class="card-title bg-warning text-white">Cancha el chico</h5>
                          
                                 <p class="card-text">&nbsp;</p>
                          <button type="button" class="btn btn-primary">Reservar aquí</button>
                        </div>
                          
              </div>
              <div class="card mb-4 shadow-sm">
                
                    <img class="card-img" src="./recursos/img/vertic_880_0.jpg" alt="Card image">
                    <div class="card-img-overlay">
                             <h5 class="card-title bg-warning text-white">Cancha el amigo</h5>
                      
                      <p class="card-text">&nbsp;</p>
                      <button type="button" class="btn btn-primary">Reservar aquí</button>
                    </div>
                    
                          
              </div>
              <div class="card mb-4 shadow-sm">
                
                    <img class="card-img" src="./recursos/img/vertic_880_0.jpg" alt="Card image">
                    <div class="card-img-overlay">
                             <h5 class="card-title bg-warning text-white">Cancha el mambo</h5>
                             <p class="card-text">&nbsp;</p>
                      <button type="button" class="btn btn-primary">Reservar aquí</button>
                    </div>
                      
          </div>
                  
               
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