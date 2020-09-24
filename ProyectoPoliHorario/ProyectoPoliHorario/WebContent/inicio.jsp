<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>POLIHORARIO</title>
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

h2 {
  color: white;
  font-family: monospace;
  font-size: 20px;
  text-align: center;
}

h3 {
  color: white;
  font-family: monospace;
  font-size: 20px;
  text-align: center;
}

p {
  font-family: courier new;
  font-size: 20px;
}

</style>

<body>
<jsp:include page="Cabecera.jsp" flush="true" />


<form method="post" action="ListarMateria">
	<table style="margin: 0 auto;">
		<tr>
		<td><input type="submit" value="Horario"/></td>
		</tr>
	</table>
</form>
<form method="post" action="CrearActividad.jsp">
	<table style="margin: 0 auto;">
		<tr>
		<td><input type="submit" value="Recordatorios"/></td>
		</tr>
	</table>
</form>

</body>
</html>