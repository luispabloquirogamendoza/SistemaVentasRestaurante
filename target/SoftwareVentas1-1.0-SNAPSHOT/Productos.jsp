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

        <div class="m-3" style="background-color: #E6E7EC" >
 
         
 
            
            
           <div class="row">
            <div class="col-md-4" >
                <form action="Controlador?menu=Productos" method="POST">
                    <div class="card">
                        <div class="card-body">
                            

                    <div class="form-group">
                        <label>Nombre de producto</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="txtNombreProducto" value="${producto.getNombreProducto()}">
                    </div>
                    <div class="form-group">
                        <label>Descripcion producto</label>
                        <input type="text" class="form-control" name="txtDescripcion" value="${producto.getDescripcion()}">
                    </div>
                    <div class="form-group">
                        <label>Unidad</label>
                        <input type="text" class="form-control" name="txtUnidad" value="${producto.getUnidad()}">
                    </div>
                    <div class="form-group">
                        <label>Precio</label>
                        <input type="text" class="form-control" name="txtPrecio" value="${producto.getPrecio()}">
                    </div>


                    <button type="submit" class="btn btn-primary" name="accion" value="Agregar">Guardar</button>
                                            </div>
                        
                    </div>
                </form>
            </div>
            <div class="col-md-8">
                <table class="table table-striped">
                    <thead>
                           <tr>
                            <th scope="col">Codigo</th>
                            <th scope="col">Nombre producto</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Unidad</th>
                            <th scope="col">Precio</th>
                            <!--<th scope="col">Acciones</th>-->
                             </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="producto" items="${productos}">
                        <tr>
                            <th scope="row">${producto.getCodigo()}</th>
                            <td>${producto.getNombreProducto()}</td>
                            <td>${producto.getDescripcion()}</td>
                            <td>${producto.getUnidad()}</td>
                            <td>${producto.getPrecio()}</td>
                            <td>
                                <!--<a class="btn btn-warning" href="Controlador?menu=Productos&accion=Cargar&id=${producto.getCodigo()}"><i class="fas fa-pencil">Actualizar</i></a>
                                <a class="btn btn-danger"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-archive-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                 <path fill-rule="evenodd" d="M12.643 15C13.979 15 15 13.845 15 12.5V5H1v7.5C1 13.845 2.021 15 3.357 15h9.286zM5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM.8 1a.8.8 0 0 0-.8.8V3a.8.8 0 0 0 .8.8h14.4A.8.8 0 0 0 16 3V1.8a.8.8 0 0 0-.8-.8H.8z"/>
                    </svg></a>-->
                            </td>
                           </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
        </div>
                        <div>
                            
                        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>

