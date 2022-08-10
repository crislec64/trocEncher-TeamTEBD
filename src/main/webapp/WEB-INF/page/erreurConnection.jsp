<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="<c:url value= "css/style.css"/>">

<meta charset="UTF-8">
<title>Erreur Connection</title>
</head>
<body>

<h1>Erreur Saisie</h1>
<p>Erreur de connection</p>

<c:if test="${utilisateur==null}"><a href="<c:url value="/utilisateur/seConnecter.jsp"/>">Réessayer</a><a href="<c:url value="/utilisateur/inscription.jsp"/>">S'inscrire</a></c:if>


<a href="<c:url value="index.jsp"/>">Retour à la page d'accueil</a>

</body>
</html>