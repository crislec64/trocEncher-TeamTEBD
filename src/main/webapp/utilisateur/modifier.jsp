<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="css/style.css"/>">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />

<meta charset="UTF-8">
<title>Modifier profil</title>
</head>
<body>

	<form action="<c:url value="/Modifier"/>" method="post">
		<label>Pseudo : </label> <input type="text" name="pseudo" value="${utilisateur.pseudo}" /><br>
		<label>Nom : </label> <input type="text" name="nom" value="${utilisateur.nom}"/><br> 
		<label>Prénom : </label> <input type="text" name="prenom" value="${utilisateur.prenom}"/><br>
		<label>Email : </label> <input type="email" name="email" value="${utilisateur.email}"/><br>
		<label>Téléphone : +33 </label><input type="tel" name="telephone" value="${utilisateur.telephone}"/><br>
		<input type="hidden" name="noUtilisateur" value="${utilisateur.noUtilisateur}"/>
		<fieldset id="adresse">
		<legend>Adresse : </legend>
		<label>Numéro de rue : </label> <input type="number" name="noRue" value="${utilisateur.noRue}"/><br>
		<label>Nom de rue : </label> <input type="text" name="rue" value="${utilisateur.rue}"/><br>
		<label>Code postal : </label> <input type="number" name="codePostal" value="${utilisateur.codePostal}"/><br>
		<label>Ville : </label> <input type="text" name="ville" value="${utilisateur.ville}"/>
		</fieldset>
		<label>Mot de passe :</label> <input type="password" name="motDePasse" value="${utilisateur.motDePasse}"/><br> 
		
		
		<input type="submit" value="Envoyer" />

	</form>
	<a href="<c:url value="/index.jsp"/>">Retour à la page d'accueil</a>
</body>
</html>