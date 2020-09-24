<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="modelo.Materia" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Horario</title>
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
<%! public String obtieneAtributo(HttpServletRequest request,String hora, String dia){
	List<Materia> listado;
    listado= (List<Materia>)request.getAttribute("Materias");
    String valor="";
    for (Materia m:listado) {
    	if (m.getDia().equals(dia)&&m.getHora().equals(hora)){
 			 valor=m.getMateria();
 	 	}
	}
    	return valor;
    }%>
<div><font color="white">Nombre : </font><input type="text" name="nombre_estudiante"/></div>
<div>&nbsp;</div>
<div><font color="white">Facultad: </font><input type="text" name="facultad"/></div>
<div>&nbsp;</div>
<form method="post" action="RegistroMateria.jsp">
<table border='1'><tr><font color="white"><th><font color="white">Hora</font></th><th><font color="white">Lunes</font></th><th><font color="white">Martes</font></th><th><font color="white">Miércoles</font></th><th><font color="white">Jueves</font></th><th><font color="white">Viernes</font></th><th><font color="white">Sábado</font></th><th><font color="white">Domingo</font></th></tr>

<tr align="center"><td><font color="white"> 5-6 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"5-6","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"5-6","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"5-6","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"5-6","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"5-6","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"5-6","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"5-6","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 6-7 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"6-7","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"6-7","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"6-7","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"6-7","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"6-7","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"6-7","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"6-7","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 7-8 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"7-8","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"7-8","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"7-8","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"7-8","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"7-8","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"7-8","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"7-8","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 8-9 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"8-9","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"8-9","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"8-9","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"8-9","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"8-9","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"8-9","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"8-9","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 9-10 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"9-10","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"9-10","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"9-10","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"9-10","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"9-10","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"9-10","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"9-10","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 11-12 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"10-11","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"10-11","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"10-11","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"10-11","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"10-11","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"10-11","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"10-11","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 12-13 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"11-12","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"11-12","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"11-12","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"11-12","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"11-12","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"11-12","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"11-12","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 10-11 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"12-13","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"12-13","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"12-13","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"12-13","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"12-13","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"12-13","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"12-13","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 13-14 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"13-14","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"13-14","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"13-14","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"13-14","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"13-14","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"13-14","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"13-14","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 14-15 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"14-15","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"14-15","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"14-15","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"14-15","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"14-15","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"14-15","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"14-15","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 15-16 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"15-16","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"15-16","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"15-16","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"15-16","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"15-16","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"15-16","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"15-16","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 16-17 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"16-17","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"16-17","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"16-17","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"16-17","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"16-17","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"16-17","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"16-17","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 17-18 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"17-18","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"17-18","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"17-18","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"17-18","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"17-18","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"17-18","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"17-18","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 18-19 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"18-19","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"18-19","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"18-19","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"18-19","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"18-19","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"18-19","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"18-19","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 19-20 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"19-20","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"19-20","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"19-20","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"19-20","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"19-20","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"19-20","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"19-20","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 20-21 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"20-21","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"20-21","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"20-21","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"20-21","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"20-21","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"20-21","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"20-21","Domingo")%>" readonly/></tr>
<tr align="center"><td><font color="white"> 21-22 </font></td><td><input type="text" name="Lunes" value="<%=obtieneAtributo(request,"21-22","Lunes")%>" readonly/></td><td><input type="text" name="Martes" value="<%=obtieneAtributo(request,"21-22","Martes")%>" readonly/></td><td><input type="text" name="Miercoles" value="<%=obtieneAtributo(request,"21-22","Miercoles")%>" readonly/></td><td><input type="text" name="Jueves" value="<%=obtieneAtributo(request,"21-22","Jueves")%>" readonly/></td><td><input type="text" name="Viernes" value="<%=obtieneAtributo(request,"21-22","Viernes")%>" readonly/></td><td><input type="text" name="Sabado" value="<%=obtieneAtributo(request,"21-22","Sabado")%>" readonly/><td><input type="text" name="Domingo" value="<%=obtieneAtributo(request,"21-22","Domingo")%>" readonly/></tr>

</table>
<div>&nbsp;</div>
<div><input type="submit" value="Nueva Materia"/> 
</form>
<form method="post" action="ActualizarMateria.jsp">
	 <input type="submit" value="Editar Materia"/> 
</form>	 
<form method="post" action="EliminaMateria.jsp">
	 <input type="submit" value="Eliminar Materia"/>
</div>
</form>
</body>
</html>