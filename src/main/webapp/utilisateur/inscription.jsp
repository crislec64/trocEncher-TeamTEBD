<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
<meta charset="UTF-8">
<title>Inscription</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>
<%@ include file="/vente/filtre.jsp"%>

<h1 id="mainTitre">Inscription</h1>

<div id="bodySite">
	<form action="<c:url value="/Inscription"/>" method="post">
		<label>Pseudo : </label> <input type="text" name="pseudo" /><br>
		<label>Nom : </label> <input type="text" name="nom" /><br> 
		<label>Prénom : </label> <input type="text" name="prenom" /><br>
		<label>Email : </label> <input type="email" name="email" /><br>
		<label>Téléphone : +33 </label><input type="tel" name="telephone" /><br>
		<fieldset id="adresse">
		<legend>Adresse : </legend>
		<label>Numéro de rue : </label> <input type="number" name="noRue" /><br>
		<label>Nom de rue : </label> <input type="text" name="rue" /><br>
		<label>Code postal : </label> <input type="number" name="codePostal" /><br>
		<label>Ville : </label> <input type="text" name="ville" />
		</fieldset>
		<label>Mot de passe :</label> <input type="password" name="motDePasse" /><br> 
		
		
		<input type="submit" value="Envoyer" id="boutonSubmit"/>

	</form>
</div>
</body>
</html>