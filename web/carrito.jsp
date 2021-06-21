<%-- 
    Document   : carrito
    Created on : 19/06/2021, 11:50:07 AM
    Author     : Microsoft
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/7a636b3642.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Arti Center </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" href="Controlador?accion=home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Ofertas del dia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?accion=home" tabindex="-1" aria-disabled="true">
                                Seguir Comprando
                            </a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>

                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Iniciar sesion
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container mt-4">
            <h3>Carrito</h3><br>
            <div class="row">
                <div class="col-sm-9">
                    <table class="table table-hover ">
                        <thead class="table-info">
                            <tr class="text-center">
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANT</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="car" items="${carrito}">
                                <tr class="text-center">
                                    <td>${car.getItem()}</td>
                                    <td>${car.getNombre()}</td>
                                    <td>
                                        <img src="ControladorImg?id=${car.getIdProducto()}" width="100" height="100">
                                        <br>${car.getDesripcion()}
                                        
                                    </td>
                                    <td>${car.getPrecio()}</td>
                                    <td>${car.getCantidad()}
                                        
                                    </td>
                                    <td>${car.getSubTotal()}</td>
                                    <td>
                                        <input type="hidden" value="idp" >
                                        <a href="Controlador?accion=Borrar">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal: </label>
                            <input value="$${total}0" type="text" readonly="" class="form-control" />
                            <label>Descuento: </label>
                            <input type="text" readonly="" class="form-control" />
                            <label>Total a pagar: </label>
                            <input value="$${total}0"  type="text" readonly="" class="form-control" />
                        </div>
                        <div class="card-footer">
                            <div class="d-grid gap-2">
                                <a href="#" class="btn btn-info">Realizar Pago</a>
                                <a href="Controlador?accion=GenerarCompra" class="btn btn-danger">Generar Compra</a>
                                
                            </div>

                        </div>

                    </div>
                </div>

            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    </body>
</html>
