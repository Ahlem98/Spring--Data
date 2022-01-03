<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add Client </title>
</head>
<body>

		<h1>Ajouter un produit</h1>
		
		<form:form method="POST" action="ajouterProduct" modelAttribute="produit">

		    <label >Description </label>
		    <form:input type="text" path="description"  />


		    <label >Date d'ajout</label>
		    <form:input type="date" path="dateAjout" class="form-control" id="exampleFormControlInput2" />


		    <label>Quantite </label>
		    <form:input type="number" path="quantite"  />

		    <label >Prix Achat </label>
		    <form:input type="number" path="prixAchat"  />


		    <label >Prix Vente </label>
		    <form:input type="number" path="prixVente"  />

				    <label >Magasin</label>
				    <form:select path="magasin.id" class="form-control"  itemLabel="titre" itemValue="id" items="${listeMagasin}" />


		    <input type="submit" />

		</form:form>
</body>
</html>