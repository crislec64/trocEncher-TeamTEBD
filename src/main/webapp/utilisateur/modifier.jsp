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
<meta charset="UTF-8">
<title>Modifier profil</title>
</head>
<%@ include file="/utilisateur/connection.jsp"%>

<main>

<h1 id="mainTitre">Modifier son profil</h1>

<div id="bodySite" style="width: 335px">
	<form action="<c:url value="/Modifier"/>" method="post">
		<label>Pseudo : </label> <input type="text" name="pseudo" value="${utilisateur.pseudo}" class="float-right" /><br>
		<label>Nom : </label> <input type="text" name="nom" value="${utilisateur.nom}" class="float-right"/><br> 
		<label>Prénom : </label> <input type="text" name="prenom" value="${utilisateur.prenom}" class="float-right"/><br>
		<label>Email : </label> <input type="email" name="email" value="${utilisateur.email}" class="float-right"/><br>
		<label>Téléphone : +33 </label><input type="tel" name="telephone" value="${utilisateur.telephone}" class="float-right"/><br>
		<input type="hidden" name="noUtilisateur" value="${utilisateur.noUtilisateur}"/>
		<fieldset id="adresse">
		<h3>Adresse : </h3>
		<label>Numéro de rue : </label> <input type="number" name="noRue" value="${utilisateur.noRue}" class="float-right"/><br>
		<label>Nom de rue : </label> <input type="text" name="rue" value="${utilisateur.rue}" class="float-right"/><br>
		<label>Code postal : </label> <input type="number" name="codePostal" value="${utilisateur.codePostal}" class="float-right"/><br>
		<label>Ville : </label> <input type="text" name="ville" value="${utilisateur.ville}" class="float-right"/>
		</fieldset>
		<label>Mot de passe :</label> <input type="password" name="motDePasse" value="${utilisateur.motDePasse}" class="float-right"/><br> 
		
		
		<input type="submit" value="Envoyer" />

	</form>
	</div>

</main>
<%@ include file="/footer.jsp"%>
</body>
</html>