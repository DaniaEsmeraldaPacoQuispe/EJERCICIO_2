
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Tarea"%>
<%
    if (session.getAttribute("tarea_pendiente") == null){
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("tarea_pendiente", lisaux);
    }
    
    ArrayList<Tarea> tarea_pendiente = (ArrayList<Tarea>)session.getAttribute("tarea_pendiente");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Tareas</h1>
        <form action="MainServletTarea" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="0" size="3"></td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="" size="20"></td>
                </tr>
                <tr>
                    <td>Completado</td>
                    <td><input type="checkbox" name="completado" value="SI" />SI</td>
                    <td><input type="checkbox" name="completado" value="NO" />NO</td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="GUARDAR"></td>
                </tr>
            </table>
        </form>
        
        <a href="MainServletTarea?op=vaciar">Nuevo</a>
        
        <h2>Tareas Pendientes</h2>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>                
                <th></th>
            </tr>
            <%
                if (tarea_pendiente != null){
                    for (Tarea t : tarea_pendiente){
            %>
            <tr>
                <td><%= t.getId() %></td>
                <td><%= t.getTarea() %></td>
                <td><%= t.getCompletado() %></td>
                <td><a href="MainServletTarea?op=eliminar&id=<%= t.getId() %>">Eliminar</a></td>
            </tr>
            <%
                    }
                }  
            %>
        </table>
    </body>
        
</html>
