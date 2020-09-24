<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NUEVO USUARIO</title>
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
  font-size: 15px;
  text-align: left;
}

p {
  color: white;
  font-family: courier new;
  font-size: 20px;
}

</style>

<body>

<jsp:include page="Cabecera.jsp" flush="true" />
<h2>Por favor, completa el siguiente formulario para completar tu registro:</h2>
<br>

<%! public String obtieneAtributo(HttpServletRequest request, String nombre){
	String valor=(String) request.getAttribute(nombre);
	if (valor==null){
		valor="";
	}
	return valor;
}

%>


<p style="color:red"><%=obtieneAtributo(request, "valError")%></p>


	<table style="margin: 0 auto;">
		<form method="post" action="registroUsuarioNuevo">
		<tr>
			<td><h3>Nombre: </h3></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="Nombre" name="nombre" value="<%=obtieneAtributo(request, "valNombre")%>"/></td>
		</tr>
		<tr>
			<td><h3>Apellido: </h3></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="Apellido" name="apellido" value="<%=obtieneAtributo(request, "valApellido")%>"/></td>
		</tr>
		<tr>
			<td><h3>Usuario: </h3></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="Usuario" name="usuario" value="<%=obtieneAtributo(request, "valUsuario")%>"/></td>
		</tr>
		<tr>
			<td><h3>Contraseña: </h3></td>
		</tr>
		<tr>
			<td><input type="password" placeholder="Contraseña" name="contraseña" value="<%=obtieneAtributo(request, "valContrasenia")%>"/></td>
		</tr>
		<tr>
			<td><h3>Repetir contraseña: </h3></td>
		</tr>
		<tr>
			<td><input type="password" placeholder="Repetir Contraseña" name="repContraseña" value="<%=obtieneAtributo(request, "valRepContrasenia")%>"/></td>
		</tr>
		<tr>
						<td><input type="submit" value="REGISTRARSE"/></td>
		</tr>
		</form>
	</table>


</body>
</html>