<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprar tickets</title>
    <link rel="stylesheet" href="styles/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<div>
   <!--Empieza la navbar-->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbarprincipal">
    <a href="Controlador?access=index"><img src="media/codoacodo.png" width="100" height="70" class="d-inline-block align-top" alt="logo de codo a codo"></a>
    <a class="navbar-brand" href="#">Conf Bs As</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav" >
    <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
        <a class="nav-link" href="Controlador?access=index">La conferencia <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="Controlador?access=verOradores">Los oradores</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="Controlador?access=index">El lugar y la fecha</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="#">Conviertete en orador</a>
        </li>
        <li class="nav-item">
        <a class="nav-link text-success" href="Controlador?access=verComprarTickets" id="botoncomprar">Comprar tickets</a>
        </li>
    </ul>
    </div>
</nav>
<!--ACA TERMINA LA NAVBAR-->
<!--ININCIAN LAS CARDS-->

<div class="card-group cardscontenedor">
    <div class="card border-primary">
        
        <div class="card-body">
            <h5 class="card-title text-center font-weight-bold">Estudiante</h5>
        <p class="card-text text-center">Tienen un descuento</p>
        <h5 class="font-weight-bold text-center">80%</h5>
        <p class="card-text text-center"><small class="text-muted">*Presentar documentación</small></p>
    </div>
    </div>
    <div class="card border-info">
    
    <div class="card-body">
        <h5 class="card-title text-center font-weight-bold">Trainee</h5>
        <p class="card-text text-center">Tienen un descuento</p>
        <h5 class="font-weight-bold text-center">50%</h5>
        <p class="card-text text-center"><small class="text-muted">*Presentar documentación</small></p>
    </div>
    </div>
    <div class="card border-danger">
    
    <div class="card-body ">
        <h5 class="card-title text-center font-weight-bold">Junior</h5>
        <p class="card-text text-center">Tienen un descuento</p>
        <h5 class="font-weight-bold text-center">15%</h5>
        <p class="card-text text-center"><small class="text-muted">*Presentar documentación</small></p>
    </div>
</div>
</div>

<!--FINALIZAN LAS CARDS-->

<!--TEXTOS EMPEIZA-->
<h5 class= "text-center">VENTA</h5>
<h2 class="text-center">VALOR DE TICKET $200</h2>
<!--TEXTOS TERMINA-->
<!--ACA EMPIEZA EL FORM 2-->
<div class="">
    <form>
        <div class="form-row justify-content-center">
        <div class="form-group col-md-4">
            
            <input type="text" class="form-control" id="inputNombre" placeholder="Nombre" >
        </div>
        <div class="form-group col-md-4">
            
            <input type="text" class="form-control" id="inputApellido" placeholder="Apellido">
        </div>
    </div>
    <div class="form-row justify-content-center">
        <div class="form-group col-md-8 " >
          <input type="email" class="form-control" id="inputEmail" placeholder="Correo">
        </div>
        </div>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-4">
                <label for="inputCity">Cantidad</label>
                <input type="text" class="form-control" id="inputCantidad">
            </div>
            <div class="form-group col-md-4">
                <label for="inputCategoria">Categoria</label>
                <select id="inputCategoria" class="form-control">
                    <option selected value="1">Estudiante</option>
                    <option value="2">Trainee</option>
                    <option value="3">Junior</option>
                </select>
            </div>
            
        </div>
        <div class="form-row justify-content-center">
        <div class="form-group col-md-8" >
          <input type="text" class="form-control" id="inputTotal" placeholder="Total a pagar" readonly="true">
        </div>
        </div>
        </div>
        <div class="form-row justify-content-center">
        <button type="button" onclick="borrarCampos()"  class="btn_borrar">Borrar</button>
        <button type="button" onclick="calcularResumen();mostrarResumen();" class="btnresumen">Resumen</button>
        </div>





      </form>
</div>

<!--ACA TERMINAEL FORM 2-->











    <!-- ACA EMPIEZA EL FOOTER-->
    <nav class="navbar navbar-expand-lg navbar-light bg-dark footer">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-around" id="navbarNav"> <!--nNO SE SI DEBE IR JUSTIFYY AROUND-->
        <ul class="navbar-nav ">
            <li class="nav-item active">
            <a class="nav-link text-white " href="#">Preguntas frecuentes <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-white" href="#">Contactanos</a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-white" href="#">Prensa</a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-white" href="#">Conferencias</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">Terminos y condiciones</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">Privacidad</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">Estudiantes</a>
            </li>
        </ul>
        </div>
    </nav>





<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    <script src="javascript/javascript.js"></script>
</body>
</html>