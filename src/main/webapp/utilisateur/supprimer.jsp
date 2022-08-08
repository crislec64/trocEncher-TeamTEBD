<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />

<meta charset="UTF-8">
<title>Confirmer la suppression</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>


<p>Confirmer la suppression de l'utilisateur <c:out value = "${utilisateur.noUtilisateur}"/> ?</p>

<form action="<c:url value="/Supprimer"/>" method="post">
<input type="hidden" name="noUtilisateur" value="${utilisateur.noUtilisateur}"/>
<input type="submit" value="Confirmer"/>
</form>
<a href="<c:url value="/index.jsp"/>">Retour à la page d'accueil</a>
</body>
</html>