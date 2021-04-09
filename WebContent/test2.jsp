<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	String nombre = "david desde variable de clase";
%>
<c:set var="nom" value="<%=nombre%>" />
<c:out value="${pageScope.nom}" />
<%
	session.setAttribute("nombre", "david");
	pageContext.setAttribute("nombre", "juan");
	request.setAttribute("nombre", "jose");
	application.setAttribute("nombre", "toti");
%>

<body>
	<c:out value="${sessionScope.nombre}" />
	<br />
	<c:out value="${pageScope.nombre}" />
	<br />
	<c:out value="${requestScope.nombre}" />
	<br />
	<c:out value="${applicationScope.nombre}" />
	<br /> 1
	<c:out value="${pageContext}" />
	<br /> 2
	<c:out value="${pageContext.request.method}" />
	<br /> 3
	<c:out value="${pageContext.request.queryString}" />
	<br /> 4
	<c:out value="${pageContext.servletContext.serverInfo}" />

</body>
</html>