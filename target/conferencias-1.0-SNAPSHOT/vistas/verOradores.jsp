<%@page import="java.util.List"%>
<%@page import="Modelo.Oradores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!--bootstrap-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous"
            />
        <title>Oradores</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-2">Oradores Confirmados</h1>
            <a class="btn btn-success" href="Controlador?access=index">Volver</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRE </th>
                        <th class="text-center">APELLIDO</th>
                        <th class="text-center">TEMA</th>
                    </tr>
                </thead>

                <tbody>
                    
                    <%
                    List<Oradores> listaOradores = (List<Oradores>) request.getAttribute("listaOradores");
                    
                    for (Oradores orador: listaOradores){
                    
                    %>
                    <tr>
                        <td class="text-center"><%= orador.getIdOrador() %></td>
                        <td class="text-center"><%= orador.getNombreOrador() %></td>
                        <td class="text-center"><%= orador.getApellidoOrador() %></td>
                        <td class="text-center"><%= orador.getTemaOrador() %></td>
                    </tr>
                    <%
                        }
                    %>
                   
                </tbody>
            </table>

        </div>
    </body>
</html>