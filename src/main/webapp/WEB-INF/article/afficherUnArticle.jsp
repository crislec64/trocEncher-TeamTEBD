<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>
<%@ include file="/vente/filtre.jsp"%>

<div class="SuperCard">
	
	<img alt="" src="">
			
	<div>
			<p>Vendeur: utilisateur n°<c:out value="${article.noUtilisateur}"/><p>
			<p>Article :<c:out value="${article.nomArticles}"/><p>
			<p>Categorie: <c:out value="${article.noCategories}"/><p>
			<p>Prix : <c:out value="${article.prixArticles}"/><p>
			<p>Description de l'article: <c:out value="${article.descriptionArticles}"/><p>
			<p>l'Enchère commence le : <c:out value="${article.debutEncheres}"/><p>
			<p>Fin de l'enchère le : <c:out value="${article.finEncheres}"/><p>
			<h3> Point de retrait </h3>
			<p>N° de rue:<c:out value="${article.noRue}"/><p>
			<p>Rue:<c:out value="${article.rue}"/><p>
			<p>Code Postal :<c:out value="${article.codePostal}"/><p>
			<p>ville :<c:out value="${article.ville}"/><p>
			
	</div>

</div>

</body>
</html>