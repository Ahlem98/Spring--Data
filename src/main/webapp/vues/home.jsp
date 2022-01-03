<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Optional theme -->

</head>
<body>


	<h1>Liste des Magasins</h1>
	
	<table border="1">
	<thead>
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Titre</th>
		      <th scope="col">Lieu</th>
		      <th scope="col"> </th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${listeMagasin }" var="magasin">
			<tr>
				<td>${magasin.id }</td>
				<td>${magasin.titre }</td>
				<td>${magasin.lieu }</td>
				<td><a href="listeProduits/${magasin.id}" >liste produits</a> </td>
			</tr>
		
			</c:forEach>
		  </tbody>
		><a href="addProduct">Add Produit</a>


	</table>
	
</body>
</html>