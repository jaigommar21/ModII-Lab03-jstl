<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="pe.edu.tecsup.app.entities.Pregunta"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		Pregunta p1 = new Pregunta();
		p1.setIdPregunta(1);
		p1.setTexto("¿Qué es jstl?");
		
		Pregunta p2 = new Pregunta();
		p2.setIdPregunta(2);
		p2.setTexto("¿Qué es EL?");
		
		Collection<Pregunta> c = new ArrayList<Pregunta>();
		c.add(p1);
		c.add(p2);
		
		request.setAttribute("preguntas", c);
	%>
	<c:forEach items="${requestScope.preguntas}" 
			   var="p" varStatus="i">
			${i.count}.- ${p.texto} <br />
	</c:forEach>
</body>
</html>