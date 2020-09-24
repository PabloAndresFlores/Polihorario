<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREACIÓN DE ACTIVIDAD</title>
</head>

<style>

input[type=text], input[type=password] {
  width: 175%;
  padding: 10px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: rgb(34,35,38);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
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

h2 {
  color: white;
  font-family: monospace;
  font-size: 20px;
  text-align: center;
}

h3 {
  color: white;
  font-family: monospace;
  font-size: 15px;
  text-align: left;
}

p {
  font-family: courier new;
  font-size: 20px;
}
</style>

<body>

<h1>
<img align="left" src="img/owl.png"/>
POLIHORARIO
<img align="right" src="img/calendar.png"/>
</h1>
<h2>Por favor, completa el siguiente formulario para completar la actividad:</h2>
<br>

<form method="post" action="Principal.jsp">
	<table style="margin: 0 auto;">
		<tr>
			<td><h3>Nombre: </h3></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="Nombre" name="nombre" required></td>
		</tr>
		<tr>
			<td><h3>Materia: </h3></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="Materia" name="materia" required></td>
		</tr>
		<tr>
			<td><h3>Fecha: </h3></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="DD/MM/AAAA" name="fecha" required></td>
		</tr>
		<tr>
			<td><h3>Tipo: </h3>
			<td><h3> <select name="combolista">
						<option value="Uno"> Tarea</option>
                    	<option value="Dos"> Prueba</option>
                    	<option value="Tres"> Examen</option>
                	</select>
			</h3></td>
			</td>
		</tr>
			<td>
			</td>
		<tr>
			<td><a href="CrearUsuario.jsp"><button type="button">CANCELAR</button></a></td>
			<td><button type="submit"> <a href="Polihorario.jsp" style="color:white;">REGISTRAR </a>></button></td>
		</tr>
	</table>
</form>

</body>
</html>