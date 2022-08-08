<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
<meta charset="UTF-8">
<title>Vendre un article</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>
<%@ include file="/vente/filtre.jsp"%>

<h1 id="mainTitre">Vendre un article</h1>

<div id="bodySite">
	<form action="<c:url value="/AjoutArticle"/>" method="post">
		<label>Nom article : </label> <input type="text" name="nomArticles" /><br>
		<label>Désignation : </label> <input type="textarea" name="designationArticles" /><br> 
		<label>Catégorie : </label> <input type="text" name="prenom" /><br>
		<label>Update : </label> <input type="email" name="email" /><br>
		<label>Valeur : </label><input type="tel" name="telephone" /><br>
		<fieldset id="dateEncheres">
		<Legend>Dates de l'enchère</Legend>
		<label>Début : </label><input type="date" name="debutEncheres"/><br>
		<label>Fin : </label><input type="date" name="finEncheres"/><br>
		</fieldset>
		<fieldset id="adresse">
		<legend>Adresse : </legend>
		<label>Numéro de rue : </label> <input type="number" name="noRue" /><br>
		<label>Nom de rue : </label> <input type="text" name="rue" /><br>
		<label>Code postal : </label> <input type="number" name="codePostal" /><br>
		<label>Ville : </label> <input type="text" name="ville" />
		</fieldset>
		
		
		<input type="submit" value="Vendre mon article" id="boutonSubmit"/>

	</form>
</div>
</body>
</html>