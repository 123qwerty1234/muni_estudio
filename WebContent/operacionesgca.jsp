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

    <title>Pricing example for Bootstrap</title>


    <!-- Bootstrap core CSS -->
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
      <h1 class="display-4">Busca deportes, cancha o gym</h1>
      <p class="lead">Encuentra las mejores opciones para ti </p>
    </div>

    <div class="container">
      <div class="card-deck mb-3 text-center">
        <div class="card mb-4 shadow-sm">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Canchas</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">50 <small class="text-muted">/ cupos</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <!--IMANE-->
            </ul>
            <input class="btn btn-lg btn-block btn-outline-primary" type="button" onclick="location.href='canchass.jsp' " value="Ver" name="boton" /> 
     
          </div>
        </div>
        <div class="card mb-4 shadow-sm">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Gym</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">100 <small class="text-muted">/ cupos</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              
            </ul>
            <input class="btn btn-lg btn-block btn-outline-primary" type="button" onclick="location.href='gym.html' " value="Ver" name="boton" /> 
     
          </div>
        </div>
        <div class="card mb-4 shadow-sm">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Actividades</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">200 <small class="text-muted">/ cupos</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
          <!--IMANE-->
            </ul>
            <input class="btn btn-lg btn-block btn-outline-primary" type="button" onclick="location.href='actividades.html' " value="Ver" name="boton" /> 
     
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