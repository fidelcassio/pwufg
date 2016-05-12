<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Cálculo IMC</title>
<link href="bootstrap.css" rel="stylesheet" media="screen">
</head>
<body>
<f:view>
	<h1 class="display-3">Calculador IMC</h1>
 	<form action="IMCServlet" method="post">
 		Peso: <input type="text" name="peso" class="form-control"/> <br/>
 		Altura: <input type="text" name="altura" class="form-control"/><br/>
 		<input  type="submit" class="btn btn-default"/><br/>
 	</form>	
 	<h2 class="display-4">${requestScope['resultado']}</h2>
</f:view>
</body>
</html>