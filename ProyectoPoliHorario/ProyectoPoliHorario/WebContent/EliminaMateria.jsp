<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="modelo.Materia" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Materia</title>
</head>
<style>

input[type=submit] {
  background-color: rgb(34,35,38);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
}

body {
  background-image:url(img/fondo.jpg);
}

h1 {
  color: white;
  text-align: center;
  font-family: fantasy;
  font-size: 65px; 
  text-decoration: underline;
}

</style>
<body>
<h1>
<img align="left" src="img/owl.png"/>
POLIHORARIO
<img align="right" src="img/calendar.png"/>
</h1>
<br>
<h2><font color="white">Pantalla para Eliminar una Materia</font></h2>
<p style="color:red"></p>
<form method="post" action="BuscarMateria" >
<input type="submit" value="Buscar"/>
<input type="text" name="buscaMateria" />
</form>
<table border="0">
    <form method="post" action="EliminarMateria" >
       <tr>
          <td><font color="white">Materia</font></td>
          <td><input type="text" name="materia" /></td>
       </tr>
       <tr>
          <td><font color="white">Dia</font></td>
          <td><input type="text" name="dia" /></td>
       </tr>
       <tr>
          <td><font color="white">Hora</font></td>
          <td><input type="text" name="hora" /></td>
       </tr>
       <tr>
          <td><input type="submit" value="Eliminar"/></td>
       </tr>
	</form>
	<form method="post" action="ListarMaterias.jsp" >
	<input type="submit" value="Cancelar"/>
	</form>
  </table>
</body>
</html>