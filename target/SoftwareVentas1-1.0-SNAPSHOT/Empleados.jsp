<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>VENTAS RESTARURANT</title>
    </head>
    <body style="
             background-color: #191D29">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-image: url('nav.png');">
             <img src="LUCHINNI-L.png" heigth="70" width="70">
            <a class="navbar-brand" href="#">LUCHINNI</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link">INICIO<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Productos&accion=Listar" target="miContenedor">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Empleados&accion=Listar" target="miContenedor">Empleados
                        y/o clientes
                        </a>
                    </li>
                    <!--<li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Clientes" target="miContenedor">Clientes</a>
                    </li>-->
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Ventas&accion=default" target="miContenedor">Ventas</a>
                    </li>
                </ul>
                <div class="btn-group">
                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-info-circle fa-lg"></i>&nbsp; Informacion
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#"><i class="fas fa-user"></i>  ${usuario.getNombre()}</a>
                        <a class="dropdown-item" href="#">${usuario.getDocumento()}</a>
                        <a class="dropdown-item" href="#">${usuario.getCorreo()}</a>
                        <div class="dropdown-divider"></div>
                        
                    </div>
                        <form class="dropdown-item" method="POST" action="Validar">
                            <button class="btn btn-danger center-block" type="submit" name="accion" value="Salir">
                                <i class="fas fa-power-off fa-lg"></i>
                            </button>
                        </form>
                </div>
                        
            </div>
                        
        </nav>

        <div class="row" style="background-color: #E6E7EC">
            <div class="card col-md-4">
                <div class="card-body">
                    <h5 class="card-title">Empleados</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Registra a los empelados o clientes en este panel </h6>
                    <div>
                        <form action="Controlador?menu=Empleados" method="POST">
                            <div class="form-group">
                                <label>CI</label>
                                <input type="number" class="form-control" name="txtdocumento" value="${usuarioSeleccionado.getDocumento()}">
                                <small class="form-text text-muted">Ingrese El No de documento sin espacios ni caracteres especiales</small>
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" class="form-control" name="txtnombre" value="${usuarioSeleccionado.getNombre()}">
                            </div>
                            <div class="form-group">
                                <label>Correo</label>
                                <input type="text" class="form-control" name="txtcorreo" value="${usuarioSeleccionado.getCorreo()}">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" class="form-control" name="txtpassword" value="${usuarioSeleccionado.getPassword()}">
                            </div>
                            <div class="form-group">
                                <label>Rol</label>
                                <select class="form-control form-control-sm" name="txtrol">
                                    <option>Empleado</option>
                                    <option>Cliente</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Estado</label>
                                <select class="form-control form-control-sm" name="txtestado">
                                    <option>Activo</option>
                                    <option>Inactivo</option>
                                </select>
                            </div>

                            <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                            <input type="submit" class="btn btn-success" name="accion" value="Actualizar" >
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">Documento</th>
                            <th scope="col">Nombres</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Contraseña</th>
                            <th scope="col">Rol</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="usuario" items="${usuarios}">

                            <tr>
                                <th scope="row">${usuario.getId()}</th>
                                <td>${usuario.getDocumento()}</td>
                                <td>${usuario.getNombre()}</td>
                                <td>${usuario.getCorreo()}</td>
                                <td>${usuario.getPassword()}</td>
                                <td>${usuario.getRol()}</td>
                                <td>${usuario.getEstado()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Empleados&accion=Cargar&id=${usuario.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleados&accion=Eliminar&id=${usuario.getId()}">Eliminar</a>
                                </td>

                            </tr>
                        </c:forEach>


                    </tbody>
                </table>
            </div>

            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>