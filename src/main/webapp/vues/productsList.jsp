<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>

</head>
<body>

<h1>products by Magasin</h1>
		<table border="1">
		  <thead>
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Description</th>
		      <th scope="col">Date Ajout</th>
		      <th scope="col">Quantite </th>
		      <th scope="col">Prix Achat </th>
		      <th scope="col">Prix Vente</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach var="e" items="${listeProduit}">
			  	<tr>
			      <th scope="row">${e.id}</th>
			      <td>${e.description}</td>
			      <td>${e.dateAjout }</td>
			      <td>${e.quantite }</td>
			      <td>${e.prixAchat }</td>
			      <td>${e.prixVente }</td>
			    </tr>
			  </c:forEach>
		  </tbody>
		</table>

</body>
</html>