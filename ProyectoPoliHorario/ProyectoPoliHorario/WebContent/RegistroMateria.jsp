<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Materia</title>
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
<jsp:include page="Cabecera.jsp" flush="true" />
<h2><font color="white">Pantalla para registrar una Materia</font></h2>
<%! public String obtieneAtributo(HttpServletRequest request, String nombre){
	 String valor=(String) request.getAttribute(nombre);
 	 if (valor==null){
 		 valor="";
 	 }
	     return valor; 
	}%>
<p style="color:red"><%= obtieneAtributo(request,"valError") %></p>
<table border="0">
    <form method="post" action="RegistroMateria" >
       <tr>
          <td><font color="white">Materia</font></td>
          <td><input type="text" name="materia" value="<%=obtieneAtributo(request,"valMateria")%>"/></td>
       </tr>
       <tr>
          <td><font color="white">Dia</font></td>
          <td><input type="text" name="dia" value="<%=obtieneAtributo(request,"valDia")%>"/></td>
       </tr>
       <tr>
          <td><font color="white">Hora</font></td>
          <td><input type="text" name="hora" value="<%=obtieneAtributo(request,"valHora")%>"/></td>
       </tr>
       <tr>
          <td><input type="submit" value="Guardar"/></td>
       </tr>
	</form>
  </table>
</body>
</html>