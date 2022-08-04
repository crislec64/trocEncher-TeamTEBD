<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Se connecter</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>
<%@ include file="/vente/filtre.jsp"%>

<h1 id="mainTitre">Connexion</h1>

<div id="bodySite">
<form action="<c:url value="/Connection"/>" method="get">
<label>Pseudo :</label>	<input type="text" name="pseudo"/><br>
<label>Mot de passe :</label>	<input type="password" name="motDePasse"/><br>
<input type="submit" value="Valider"/>

<h2>Pas encore de compte ?</h2>

<a href="<c:url value="/utilisateur/inscription.jsp"/>">S'inscrire</a>
	
</form>
</div>
</body>
</html>