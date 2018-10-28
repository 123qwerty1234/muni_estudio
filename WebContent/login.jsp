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
    

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="./recursos/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="./recursos/css/floating-labels.css" rel="stylesheet">
  </head>

  <body>
    <div class="form-signin">
      <div class="text-center mb-4">
        <img class="mb-4" src="./recursos/img/alpha-m-box.svg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Municipalidad</h1>
        <p>Departamento de deportes y recreacion</p>
      </div>

      <div class="form-label-group">
        <input type="email" id="txtEmail" class="form-control" placeholder="Email"  autofocus>
        <label for="txtEmail">Email</label>
      </div>

      <div class="form-label-group">
        <input type="password" id="txtPassword" class="form-control" placeholder="Password" >
        <label for="txtPassword">Password</label>
      </div>

      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> recordarme
        </label>
      </div>
      <input class="btn btn-lg btn-block btn-primary" type="button" onclick="location.href='./operacionesgca.jsp'" value="Vamos" name="boton" /> 

      <button class="btn btn-lg btn-block btn-outline-primary" type="submit" data-toggle="modal" data-target="#exampleModal">Registrarme</button>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
  
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Registro</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <!--Inicia Modal-->

                    <div class="form-label-group">
                        <input type="email" id="txtNombre" class="form-control" placeholder="Nombre"  autofocus>
                        <label for="txtNombre">Nombre</label>
                    </div>
                    <div class="form-label-group">
                      <input type="email" id="txtApellido" class="form-control" placeholder="Apellido paterno"  autofocus>
                      <label for="txtApellido">Apellido paterno</label>
                  </div>
                  <div class="form-label-group">
                    <input type="email" id="txtApellidoM" class="form-control" placeholder="Apellido materno"  autofocus>
                    <label for="txtApellidoM">Apellido materno</label>
                </div>
                <div class="form-label-group">
                  <input type="email" id="txtTelefono" class="form-control" placeholder="Telefono"  autofocus>
                  <label for="txtTelefono">Telefono</label>
              </div>
              <div class="form-label-group">
                <input type="email" id="txtCorreR" class="form-control" placeholder="Correo"  autofocus>
                <label for="txtCorreR">Correo</label>
            </div>
            <div class="form-label-group">
              <input type="email" id="txtClave" class="form-control" placeholder="Clave"  autofocus>
              <label for="txtClave">Clave</label>
          </div>
          <div class="form-label-group">
            <input type="email" id="txtNivel" class="form-control" placeholder="Nivel"  autofocus>
            <label for="txtNivel">Nivel</label>
        </div>
                


                <!--Inicia Modal-->
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary">Registrarme</button>
            </div>
          </div>
        </div>
      </div>
    </div>


  
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>