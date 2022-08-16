<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"></script>
<meta charset="UTF-8">
<title>Inscription</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>

<main>

<h1 id="mainTitre">Inscription</h1>

<div id="bodySite">
	<form action="<c:url value="/Inscription"/>" method="get" class="subscribe-form">
		<label>Pseudo : </label> <input type="text" name="pseudo" /><br>
		<label>Nom : </label> <input type="text" name="nom" /><br> 
		<label>Prénom : </label> <input type="text" name="prenom" /><br>
		<label>Email : </label> <input type="email" name="email" /><br>
		<label>Téléphone : +33 </label><input type="tel" name="telephone" /><br>
		<fieldset id="adresse">
		<h3>Adresse : </h3>
		<label>Numéro de rue : </label> <input type="number" name="noRue" /><br>
		<label>Nom de rue : </label> <input type="text" name="rue" /><br>
		<label>Code postal : </label> <input type="number" name="codePostal" /><br>
		<label>Ville : </label> <input type="text" name="ville" />
		</fieldset>
		<label>Mot de passe :</label> <input type="password" name="motDePasse" /><br> 
		
		
		<input type="submit" value="Envoyer" id="boutonSubmit"/>

	</form>
</div>

</main>
<%@ include file="/footer.jsp"%>
</body>
</html>