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

<h1 id="mainTitre">Liste des enchères</h1>

<c:forEach var = "articles" items="${articles}">

	<div class="Card">
		<img alt="" src="">
			
		<div>
			
			<a href="<c:url value="/AfficherUnArticle?id=${articles.noArticles}"/>"><c:out value="${articles.nomArticles}"/></a>
			<p>Prix : <c:out value="${articles.prixArticles}"/>
			<p>l'Enchère commence le : <c:out value="${articles.debutEncheres}"/><p>
			<p>Fin de l'enchère le : <c:out value="${articles.finEncheres}"/><p>
			
		</div>
	
	</div>
</c:forEach>

</body>
</html>